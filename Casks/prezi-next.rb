cask "prezi-next" do
  version "1.47.0"
  sha256 "8c01cdf5860314d2252f4a7f7a5bea292da283cc29626bfd219a4bd2b91572ff"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
  name "Prezi Next"
  homepage "https://prezi.com/"

  app "Prezi Next.app"
end
