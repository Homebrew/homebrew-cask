cask "raze" do
  version "0.9.0"
  sha256 "18e52a1ebc35ff3b14b35c3c39d0e05ebbed1814d1f3bf8690e62f30b3b427ac"

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
