cask "bluej" do
  arch arm: "aarch64", intel: "x64"

  version "5.4.2"
  sha256 arm:   "6fbd02badb9185880542596bdb9c24803323a5b435db259f07a29bc45f8a3463",
         intel: "ce174a12ada0436bacfcf794e598df7464a54b93764ea935bc444c95c4794acf"

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
