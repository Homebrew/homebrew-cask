cask "prezi-next" do
  version "1.60.0,27393"
  sha256 "7b8d4675faca122534331d383811eff5a7b6da815d486a1bc969aa5869ac9bfb"

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
