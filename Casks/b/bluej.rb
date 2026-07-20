cask "bluej" do
  arch arm: "aarch64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "2151ec9e1ce8d49e80c58267e5691aa71ac638997d338ecf2ea1f134da12d542",
         intel: "a65a4a5ee7470af29e191dfd63edcb88faa1aca1699c22d22ac1102ceaeb90f8"

  url "https://github.com/k-pet-group/BlueJ-Greenfoot/releases/download/BLUEJ-RELEASE-#{version}/BlueJ-mac-#{arch}-#{version}.dmg",
      verified: "github.com/k-pet-group/BlueJ-Greenfoot/"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
