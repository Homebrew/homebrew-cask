cask "shotcut" do
  version "25.05.11"
  sha256 "97be8cd8652f46c4d33ca15e9ecb2746af70929f24fe76ca883f0e2357da44ad"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.csv.first}/shotcut-macos-#{version.csv.second || version.csv.first.no_dots}.dmg",
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

  depends_on macos: ">= :big_sur"

  app "Shotcut.app"

  zap trash: [
    "~/Library/Application Support/Meltytech",
    "~/Library/Caches/Meltytech",
    "~/Library/Preferences/com.meltytech.Shotcut.plist",
  ]
end
