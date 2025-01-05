cask "greenfoot" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "410c7e749a41e55a56bb455cd36314da7192381be061dcb00b6467de037f40f3",
         intel: "18d4c1815c664f49b8760d7b38f15f8e7cfe22cae7fd78f46028f55acaf61281"

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{arch}-#{version.no_dots}.dmg"
  name "Greenfoot"
  desc "Teach object orientation with Java"
  homepage "https://www.greenfoot.org/home"

  livecheck do
    url "https://www.greenfoot.org/download"
    regex(/Version:\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "Greenfoot.app"

  zap trash: [
    "~/Library/Preferences/org.greenfoot",
    "~/Library/Preferences/org.greenfoot.plist",
    "~/Library/Saved Application State/org.greenfoot.Greenfoot.savedState",
  ]
end
