cask "greenfoot" do
  version "3.8.1"
  sha256 "31a92f6dc1243e7f41e238bb6b4eb6ec7481d2741d129e07d98839e07dbfe955"

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.dmg"
  name "Greenfoot"
  desc "Teach object orientation with Java"
  homepage "https://www.greenfoot.org/home"

  livecheck do
    url "https://www.greenfoot.org/download"
    regex(/Version:\s*(\d+(?:\.\d+)+)/i)
  end

  app "Greenfoot.app"

  zap trash: [
    "~/Library/Preferences/org.greenfoot",
    "~/Library/Preferences/org.greenfoot.plist",
    "~/Library/Saved Application State/org.greenfoot.Greenfoot.savedState",
  ]
end
