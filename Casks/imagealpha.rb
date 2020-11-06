cask "imagealpha" do
  version "1.5.1"
  sha256 "be8a4544a2a855ba424e33819940b4b0ddb1221d1f46ca360181fd4ee2bef24b"

  url "https://pngmini.com/ImageAlpha#{version}.tar.bz2"
  appcast "https://pngmini.com/appcast.xml"
  name "ImageAlpha"
  desc "Utility to reduce the size of 24-bit PNG files"
  homepage "https://pngmini.com/"

  app "ImageAlpha.app"
end
