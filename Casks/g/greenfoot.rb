cask "greenfoot" do
  version "3.8.0"
  sha256 "f1d55c0d72a27fa0d4622974eb59cc987a2effa1c842bb29a92fdb8c3407a800"

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
