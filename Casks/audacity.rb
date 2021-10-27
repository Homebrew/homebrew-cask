cask "audacity" do
  version "3.0.5"
  sha256 "61b2c8d43b1fe10fa4ed383a6b5dc5553b57b38a13745d4f4983beffb2bb7890"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macos-#{version}-Intel.dmg",
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
