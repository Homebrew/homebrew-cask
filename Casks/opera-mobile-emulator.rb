cask "opera-mobile-emulator" do
  version "12.1"
  sha256 "de7e456dae31d140eefa25dae55e96b9dd773167d72c4e0ff407002922a05f1f"

  url "https://get.geo.opera.com/pub/opera/sdlbream/1210/Opera_Mobile_Emulator_#{version}_Mac.dmg"
  name "Opera Mobile Classic Emulator"
  desc "Browser emulator"
  homepage "https://www.opera.com/developer/mobile-emulator"

  app "Opera Mobile Emulator.app"

  caveats do
    discontinued
  end
end
