cask "bluej" do
  arch arm: "aarch64", intel: "x64"

  version "6.0.1"
  sha256 arm:   "fd2a70a981a9e801f98efc9423a3c48e014c80e180612f37e6223e7bda9c45d2",
         intel: "a7c5091e2889e8a58104d16c06d709a52712217ec5ab24198446201106a142d4"

  url "https://github.com/k-pet-group/BlueJ-Greenfoot/releases/download/BLUEJ-RELEASE-#{version}/BlueJ-mac-#{arch}-#{version}.dmg"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "BlueJ.app"

  uninstall quit: "org.bluej.BlueJ"

  zap trash: "~/Library/Preferences/org.bluej"
end
