cask "prezi-next" do
  version "1.61.0"
  sha256 "1afc3c50dfd2a0a0bb5b35f9e5071e0df42342fd5c1215ca60656544ffeec51e"

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
