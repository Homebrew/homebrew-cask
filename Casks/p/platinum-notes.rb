cask "platinum-notes" do
  version "10.5.0.1256,57"
  sha256 :no_check

  url "https://builds.mixedinkey.com/download/#{version.csv.second}/release/latest?key=public"
  name "Platinum Notes"
  desc "Improve audio quality of music files"
  homepage "https://mixedinkey.com/platinum-notes/"

  # The version for the latest file can only be found by checking the headers
  # (`Location` or `Content-Disposition`) of the unversioned URL for the latest
  # file. This URL includes a numeric ID that varies based on major version and
  # platform (Mac, Windows).
  livecheck do
    url "https://mixedinkey.com/platinum-notes/download/"
    regex(/Platinum(?:%2B|[+._-])Notes(?:%2B|[+._-])v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      download_id = page[%r{href="https://builds\.mixedinkey\.com/download/(\d+)/[^"]+">Download for Mac}i, 1]
      next if download_id.blank?

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
  depends_on :macos

  app "Platinum Notes #{version.major}.app"

  uninstall quit: "com.mixedinkey.PlatinumNotes"

  zap trash: [
    "~/Library/Application Support/com.mixedinkey.PlatinumNotes",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/com.mixedinkey.PlatinumNotes",
    "~/Library/HTTPStorages/com.mixedinkey.PlatinumNotes",
    "~/Library/Preferences/com.mixedinkey.PlatinumNotes.plist",
  ]
end
