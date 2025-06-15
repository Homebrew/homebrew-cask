cask "bluej" do
  arch arm: "aarch64", intel: "x64"

  version "5.5.0"
  sha256 arm:   "206c4b329f8b47e84b547a4f8fa5afdc9e143a803717cd47f2a1a2cacf183546",
         intel: "1e34bad46a6bb9f6ab12fde6a138e222aba769f803dcd968c3bd278523837de4"

  url "https://github.com/k-pet-group/BlueJ-Greenfoot/releases/download/BLUEJ-RELEASE-#{version}/BlueJ-mac-#{arch}-#{version}.dmg",
      verified: "github.com/k-pet-group/BlueJ-Greenfoot/"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
