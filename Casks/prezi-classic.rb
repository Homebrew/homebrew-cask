cask "prezi-classic" do
  version "6.14.0"
  sha256 "ed9cc68796e4a055fa01cd28ab593370b6f4d87a937237e2f23f7fba9c70f332"

  url "https://desktopassets.prezi.com/mac/pd6/releases/Prezi_Classic_#{version}.dmg"
  appcast "https://prezidesktop.s3.amazonaws.com/assets/mac/pd6/updates/prezi-classic.xml"
  name "Prezi Classic"
  homepage "https://prezi.com/desktop"

  app "Prezi Classic.app"
end
