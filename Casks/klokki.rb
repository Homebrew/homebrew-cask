cask "klokki" do
  version "1.3.1"
  sha256 "82a9d565c696c12979e7565e64f23561d28da951660049930dd878d1cce2fa9e"

  # storage.yandexcloud.net/klokki/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/klokki/Klokki.dmg"
  appcast "https://storage.yandexcloud.net/klokki/appcast.xml"
  name "Klokki"
  desc "Automatic time-tracking solution or freelancers and makers"
  homepage "https://klokki.com/"

  depends_on macos: ">= :mojave"

  app "Klokki.app"
end
