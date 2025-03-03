cask "grafx" do
  version "2.8.3174,71"
  sha256 "b0207e50bddf10e289d03ba2dd52e7fe1c5c5ee32293cc2441eb9e0aac536891"

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.csv.second}"
  name "GrafX2"
  desc "256 colour painting program"
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  # Upstream lists a number of files for macOS on the download page
  # (https://pulkomandy.tk/projects/GrafX2/downloads) but it's not clear which
  # variant we should use. The homepage links to grafx2.eu as the "Main website"
  # and its download page links to a specific download for macOS, so we check
  # that instead. The full version isn't listed on the page, so we have to check
  # the filename in the `Content-Disposition` header of the download response.
  # NOTE: The grafx2.eu download page uses an iframe from grafx2.chez.com for
  # the page content, so we're checking the iframe URL.
  livecheck do
    url "http://grafx2.chez.com/index.php?static3/downloads"
    regex(%r{Mac\s*OS.*?href=.*?/projects/GrafX#{version.major}/downloads/(\d+)/?["' >]}im)
    strategy :page_match do |page, regex|
      # Match the ID for the macOS download
      download_id = page.scan(regex).flatten.max_by { |v| Version.new(v) }
      next unless download_id

      # Fetch the headers for the download URL
      download_headers = Homebrew::Livecheck::Strategy.page_headers("https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{download_id}")
      next if download_headers.blank?

      # Match the version from the filename in the `Content-Disposition` header
      merged_headers = download_headers.reduce(&:merge)
      version = merged_headers["content-disposition"]&.[](/Grafx\d+\.app.*?v?(\d+(?:\.\d+)+)/i, 1)
      next unless version

      "#{version},#{download_id}"
    end
  end

  app "Grafx#{version.major}.app"

  caveats do
    requires_rosetta
  end
end
