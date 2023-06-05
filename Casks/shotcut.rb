cask "shotcut" do
  version "23.05.14"
  sha256 "2a87faea8a18592b52dc978209a7aac4262f63af3a691209d3a7470ec6c5cade"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"

  zap trash: [
    "~/Library/Application Support/Meltytech",
    "~/Library/Caches/Meltytech",
    "~/Library/Preferences/com.meltytech.Shotcut.plist",
  ]
end
