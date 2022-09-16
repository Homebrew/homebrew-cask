cask "prezi-next" do
  version "1.57.0,27230"
  sha256 "a2598a4034fce5b5409ea10565a7f5256fead5386f832c61b627fd862879b40d"

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
