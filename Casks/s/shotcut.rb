cask "shotcut" do
  version "25.12.31"
  sha256 "4bf2ba68163f505dd2b8a7d6c9fc491385564d9472fd3cf4c82441669671665b"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.csv.first}/shotcut-macos-#{version.csv.second || version.csv.first}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/shotcut[._-]macos[._-]v?(\d+(?:\.\d+)*)\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1].tr(".", "") == match[2].tr(".", "")

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "Shotcut.app"

  zap trash: [
    "~/Library/Application Support/Meltytech",
    "~/Library/Caches/Meltytech",
    "~/Library/Preferences/com.meltytech.Shotcut.plist",
  ]
end
