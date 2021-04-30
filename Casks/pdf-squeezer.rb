cask "pdf-squeezer" do
  version "4.2.2,607b"
  sha256 :no_check

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  livecheck do
    url "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml"
    strategy :sparkle
  end

  app "PDF Squeezer.app"
end
