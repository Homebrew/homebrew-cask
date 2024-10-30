cask "greenfoot" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "ba33e14149e58ed95423b108e4b6c401c5dd822b36460ccee2ae71dcbc996261",
         intel: "ab6488f1d736248193fcc1e93f56e2b12c051b8b6888df55e2b9885f902b7071"

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{arch}-#{version.no_dots}.dmg"
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
