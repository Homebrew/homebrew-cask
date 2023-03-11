cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.5"
  sha256 arm:   "a308b5b489c759316618d3610f3dce04d1eebf286350595b1977416957909304",
         intel: "5aced6ffc9c9a26874dee9235f19757dff5b0319daa4b65a60b4d887fdf4251d"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
