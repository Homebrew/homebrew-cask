cask "klokki" do
  version "1.3.0"
  sha256 "5d7daf34c47efcb2b08ab7ad0b86023a13080c052d4273f3503d458127c094c3"

  # storage.yandexcloud.net/klokki/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/klokki/Klokki.dmg"
  appcast "https://storage.yandexcloud.net/klokki/appcast.xml"
  name "Klokki"
  homepage "https://klokki.com/"

  depends_on macos: ">= :mojave"

  app "Klokki.app"
end
