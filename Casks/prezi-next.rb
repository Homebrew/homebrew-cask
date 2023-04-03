cask "prezi-next" do
  version "1.62.0"
  sha256 "8532d4fbe78e608a5c6412a048bff1e7537e94da57658e037506ca04bfefa933"

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
