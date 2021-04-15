cask "audacity" do
  version "3.0.0"
  sha256 "f769a9e8c0f2352171933339681616ddab43ca6d7b688918e5af8bd1382a0fad"

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
