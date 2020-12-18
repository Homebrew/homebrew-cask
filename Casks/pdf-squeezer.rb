cask "pdf-squeezer" do
  version "4.2.1"
  sha256 :no_check

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  appcast "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  app "PDF Squeezer.app"
end
