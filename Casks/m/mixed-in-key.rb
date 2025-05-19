cask "mixed-in-key" do
  version "11.2.0.7221,67"
  sha256 "b1c99e66cf7b00392b8c84495d6b2e969551b4952d84550ece976d83ab6a4727"

  url "https://builds.mixedinkey.com/download/#{version.csv.second}/release/latest?key=public"
  name "Mixed In Key"
  desc "Harmonic mixing for DJs and music producers"
  homepage "https://mixedinkey.com/get#{version.major}/"

  # The version for the latest file can only be found by checking the headers
  # (`Location` or `Content-Disposition`) of the unversioned URL for the latest
  # file. This URL includes a numeric ID that varies based on major version and
  # platform (Mac, Windows). The upstream download page is specific to a given
  # major version, so we have to fetch multiple pages to identify the current
  # URL for the latest file.
  livecheck do
    url "https://shop.mixedinkey.com"
    regex(/Mixed(?:%2B|[+._-])In(?:%2B|[+._-])Key[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      # Find the current major version
      major_version = page[/Mixed\s+in\s+Key\s+v?(\d+)\s*</i, 1]
      next if major_version.blank?

      # Fetch the download page for the current major version
      download_page = Homebrew::Livecheck::Strategy.page_content("https://mixedinkey.com/get#{major_version}/")
      next if (download_page_content = download_page[:content]).blank?

      # Find the download ID for the Mac version
      download_id = download_page_content[%r{href=.*?/download/(\d+)/.+?download(?:-|\s+for\s+)mac}im, 1]
      next if download_id.blank?

      # Identify version from the filename in headers
      Homebrew::Livecheck::Strategy.page_headers(
        "https://builds.mixedinkey.com/download/#{download_id}/release/latest?key=public",
      )&.map do |headers|
        match = (headers["location"] || headers["content-disposition"])&.match(regex)
        next if match.blank?

        "#{match[1]},#{download_id}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Mixed In Key #{version.major}.app"

  uninstall quit: "com.mixedinkey.application"

  zap trash: [
    "~/Library/Application Support/com.mixedinkey.application",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/com.mixedinkey.application",
    "~/Library/HTTPStorages/com.mixedinkey.application",
    "~/Library/Preferences/com.mixedinkey.application.plist",
    "~/Library/Saved Application State/com.mixedinkey.application.savedState",
    "~/Library/WebKit/com.mixedinkey.application",
  ]
end
