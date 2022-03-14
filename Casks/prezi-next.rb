cask "prezi-next" do
  version "1.54.1,27177"
  sha256 "92cdb6d23d93aee151f9f5a80bb50d9c1f89cc5d855655c0c41a7e4309345894"

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
