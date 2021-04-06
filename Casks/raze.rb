cask "raze" do
  version "0.9.1"
  sha256 "490a56e60116a9093e2711580864afd71de0ff05974beb01358400a0e701ef36"

  url "https://github.com/coelckers/Raze/releases/download/#{version}_beta/raze-macos-#{version}.zip"
  name "Raze"
  desc "Build engine port backed by GZDoom tech"
  homepage "https://github.com/coelckers/Raze"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*)/)
  end

  app "Raze.app"

  zap trash: [
    "~/Documents/Raze",
    "~/Library/Application Support/Raze",
    "~/Library/Preferences/raze.ini",
    "~/Library/Preferences/org.drdteam.raze.plist",
    "~/Library/Preferences/org.zdoom.raze.plist",
    "~/Library/Saved Application State/org.drdteam.raze.savedState",
    "~/Library/Saved Application State/org.zdoom.raze.savedState",
  ]
end
