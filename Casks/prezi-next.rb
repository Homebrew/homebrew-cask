cask "prezi-next" do
  version "1.46.0"
  sha256 "1b151c5e7e0eb7a97328261f9ae19ed72b02641ad5ce6c8e2cabd1dab3ccd3fe"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
  name "Prezi Next"
  homepage "https://prezi.com/"

  app "Prezi Next.app"
end
