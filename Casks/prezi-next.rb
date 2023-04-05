cask "prezi-next" do
  version "1.62.1"
  sha256 "d693ce18fc2bb1cf8bed4642fc5c88a91331d375f0954847435eb89f28a49e52"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  name "Prezi Next"
  desc "Presentation software"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :el_capitan"

  app "Prezi Next.app"
end
