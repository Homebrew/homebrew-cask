cask "prezi-next" do
  version "1.48.0"
  sha256 "97738026b6330b97c68a74578813769accd8344b62c0a53c375acc8946356511"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
  name "Prezi Next"
  homepage "https://prezi.com/"

  app "Prezi Next.app"
end
