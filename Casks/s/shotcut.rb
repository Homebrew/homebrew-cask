cask "shotcut" do
  version "24.09.19"
  sha256 "fa05e60dfe7be6c78155c3ce9aae18ceb7882c40baa66770badf2dbb7c54a4ce"

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
