cask "raze" do
  version "1.0.3"
  sha256 "eb64d75e99ef7f81e106600c1a82aee35bc0fac66857b0b384ec24c5bc949008"

  url "https://github.com/coelckers/Raze/releases/download/#{version}/raze-macos-#{version}.zip"
  name "Raze"
  desc "Build engine port backed by GZDoom tech"
  homepage "https://github.com/coelckers/Raze"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
