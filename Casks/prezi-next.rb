cask "prezi-next" do
  version "1.53.2,27109"
  sha256 "f178259032d03fefd33645ea66232dbfa858d5a2fd3e0b41a47ea60ad3522be3"

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
