cask "mixed-in-key-live" do
  version "11.0.4.567,55"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://builds.mixedinkey.com/download/#{version.csv.second}/release/latest?key=public"
  name "Mixed In Key Live"
  desc "Get the Key and BPM of any audio, instantly"
  homepage "https://mixedinkey.com/live"

  # The version for the latest file can only be found by checking the headers
  # (`Location` or `Content-Disposition`) of the unversioned URL for the latest
  # file. This URL includes a numeric ID that varies based on major version and
  # platform (Mac, Windows). The upstream download page is specific to a given
  # major version, so we have to fetch multiple pages to identify the current
  # URL for the latest file.
  livecheck do
    url "https://mixedinkey.com/get-live/"
    regex(/Mixed(?:%2B|[+._-])In(?:%2B|[+._-])Key(?:%2B|[+._-])Live(?:%2B|[+._-])v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      # Find the current major version      # Find the download ID for the Mac version
      download_id = page[%r{href=.*?/download/(\d+)/.+?download(?:-|\s+for\s+)mac}im, 1]
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
  depends_on macos: :big_sur

  pkg "Mixed In Key Live.pkg"

  uninstall quit:    "com.mixedinkey.MIK-Live",
            pkgutil: "com.mixedinkey.Mixed_In_Key_Live.pkg"

  zap trash: [
    "~/Library/Application Support/com.mixedinkey.MIK-Live",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/com.mixedinkey.MIK-Live",
    "~/Library/HTTPStorages/com.mixedinkey.MIK-Live",
    "~/Library/Preferences/com.mixedinkey.MIK-Live.plist",
    "~/Library/Saved Application State/com.mixedinkey.MIK-Live.savedState",
  ]
end
