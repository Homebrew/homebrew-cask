cask "pdf-squeezer" do
  version "4.1.1"
  sha256 "71bd848a5fcc4e6d0738827802e1dd1c2f0efc640e25e6f911808d3e8265c355"

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  appcast "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  app "PDF Squeezer.app"
end
