cask "klokki" do
  version "1.3.2"
  sha256 "230030fee250b9c06b1f9748d7ffcfb94feeaa8d9b82e1e878b08735d1c6d4df"

  # storage.yandexcloud.net/klokki/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/klokki/Klokki.dmg"
  appcast "https://storage.yandexcloud.net/klokki/appcast.xml"
  name "Klokki"
  desc "Automatic time-tracking solution or freelancers and makers"
  homepage "https://klokki.com/"

  depends_on macos: ">= :mojave"

  app "Klokki.app"
end
