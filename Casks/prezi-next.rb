cask "prezi-next" do
  version "1.50.0,26964"
  sha256 "ea6c8e9ed792c7f526a988592eb9721ace497cca91666da5e025ad9535963918"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version.before_comma}.dmg"
  name "Prezi Next"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle
  end

  app "Prezi Next.app"
end
