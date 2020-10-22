cask "loopback" do
  version "2.1.5"
  sha256 "01149d4ec0f1ea55696325773e35bed632d99083a426cfd2359183f207a33acd"

  # d2oxtzozd38ts8.cloudfront.net/loopback/ was verified as official when first introduced to the cask
  url "https://d2oxtzozd38ts8.cloudfront.net/loopback/download/Loopback.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000"
  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Loopback.app"
end
