cask "nx-studio" do
  version "1.9.1,7UpYe00AzaxT07tkbSd28mJDk232,270"
  sha256 "db36808c3ef7bda6adeb4a50ccfa8401b210be16061f76e80f7b8dcf9edb6cf5"

  url "https://download.nikonimglib.com/archive7/#{version.csv.second}/S-NXSTDO-#{version.csv.first.split(".").map { |n| n.rjust(2, "0") }.join}MF-ALLIN-ALL___.dmg",
      verified: "download.nikonimglib.com/"
  name "NX Studio"
  desc "Nikon suite for viewing, processing, and editing photos and videos"
  homepage "https://imaging.nikon.com/imaging/lineup/software/nx_studio/"

  livecheck do
    url "https://downloadcenter.nikonimglib.com/en/products/564/NX_Studio.html"
    regex(/Ver\.\s+(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      version = page.scan(regex).filter_map { |match| match.first.tr(" ", "") }&.first

      html_id = page.scan(%r{/download/sw/(\d+)\.html}i)&.first
      next if html_id.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://downloadcenter.nikonimglib.com/en/download/sw/#{html_id[0]}.html")
      download_query = version_page[:content]&.match(/id="controllerMac".*redirect.do\?(.*?)[" <]/im)
      next if download_query.blank?

      redirect_url = "https://crossgate.nikonimglib.com/dsd_redirect/redirect.do?#{download_query[1].gsub("&amp;", "&")}"
      merged_headers = Homebrew::Livecheck::Strategy.page_headers(redirect_url).reduce(&:merge)
      directory = merged_headers["location"]&.match(%r{/archive7/([^/]+)/}i)
      next if directory.blank?

      "#{version},#{directory[1]},#{html_id[0]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: [
    "jp.co.nikon.MovieEditor.main",
    "jp.co.nikon.NXStudio.main",
  ]

  zap trash: [
    "/Library/Application Support/Nikon",
    "/Library/ColorSync/Profiles/Nikon",
    "/Library/Preferences/jp.co.nikon.MovieEditor.plist",
    "/Library/Preferences/jp.co.nikon.NX Studio.plist",
    "~/Library/Application Support/Nikon",
    "~/Library/Caches/jp.co.nikon.NX-Studio",
    "~/Library/Preferences/jp.co.nikon.NX-Studio.plist",
  ]
end
