cask "prezi-next" do
  version "1.51.0,27016"
  sha256 "b7990bb9825eb51226d536bdc4e8c122138de9ff5f9ee4fb598fd32dd476d196"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version.before_comma}.dmg"
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
