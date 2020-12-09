cask "pdf-squeezer" do
  version "4.2.1"
  sha256 "33fed893440985b5b422fa24bcdf68fff7490467525472c93d7960f353842d4d"

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  appcast "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  app "PDF Squeezer.app"
end
