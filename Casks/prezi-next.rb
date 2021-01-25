cask "prezi-next" do
  version "1.49.0,26948"
  sha256 "2036db1ceb6b801cb449759dde299c5182bb91b514ce58e26a2629585925e025"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version.before_comma}.dmg"
  name "Prezi Next"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle
  end

  app "Prezi Next.app"
end
