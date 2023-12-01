cask "greenfoot" do
  version "3.8.2"
  sha256 "5938f08627794f570c01299cc9cb9153e141a3264545e9a0d875d0cbbb9fb091"

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
