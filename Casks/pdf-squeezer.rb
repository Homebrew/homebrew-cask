cask "pdf-squeezer" do
  version "4.2.1"
  sha256 "5635dfeac7df57ba5ce6534f59c770c426b8dff6e451ad80a8153b9ced530119"

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  appcast "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  app "PDF Squeezer.app"
end
