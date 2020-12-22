cask "prezi-next" do
  version "1.48.0,26934"
  sha256 "97738026b6330b97c68a74578813769accd8344b62c0a53c375acc8946356511"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version.before_comma}.dmg"
  name "Prezi Next"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle
  end

  app "Prezi Next.app"
end
