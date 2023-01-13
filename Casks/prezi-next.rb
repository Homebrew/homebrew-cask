cask "prezi-next" do
  version "1.59.0,27276"
  sha256 "1bbdf99a92b8d8ffa752c40900f7d0c90ae4e6001da76794db8140ce3d5b93fd"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version.csv.first}.dmg"
  name "Prezi Next"
  desc "Presentation software"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Prezi Next.app"
end
