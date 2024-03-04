cask "shotcut" do
  version "24.02.29"
  sha256 "5cb0d10ce8a813d6a30c1ded50133bd02a560b7b98e9c52ebcb97beeaf2449db"

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
