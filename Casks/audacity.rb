cask "audacity" do
  version "3.0.2"
  sha256 "57895aad20a5512aeb44d1ab5b7d01a68a5303d4225351528f377eb7686f281e"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macos-#{version}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
