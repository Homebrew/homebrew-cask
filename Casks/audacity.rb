cask "audacity" do
  version "3.1.1"
  sha256 "84b0e9590bf0b418d1722aa04a933658840c0945e9c4e52daacb9c2e36ab80a6"

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
