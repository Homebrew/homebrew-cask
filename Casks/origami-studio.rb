cask "origami-studio" do
  version "247414065"
  sha256 "810fca677beeb2df94d8f1c72c4ed5bdd86ba50d68be11ea29eae717a07fa822"

  # fb.me/ was verified as official when first introduced to the cask
  url "https://fb.me/getorigamistudio"
  appcast "https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571"
  name "Origami Studio"
  homepage "https://origami.design/"

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"
end
