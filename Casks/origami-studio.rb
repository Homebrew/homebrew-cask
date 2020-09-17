cask "origami-studio" do
  version "239499608"
  sha256 "e1dca9739367ece16333c0f7834ad6901fedf5b81f9db3bab01ebbd4f61eccc5"

  # fb.me/ was verified as official when first introduced to the cask
  url "https://fb.me/getorigamistudio"
  appcast "https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571"
  name "Origami Studio"
  homepage "https://origami.design/"

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"
end
