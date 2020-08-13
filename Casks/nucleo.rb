cask "nucleo" do
  version "2.6.1"
  sha256 "15488d5c51dd7ea3af414f68d6e5e855d880e0ef71a48ea08f00ab56e0f9a736"

  # nucleo-app-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip"
  appcast "https://nucleoapp.com/updates"
  name "Nucleo"
  homepage "https://nucleoapp.com/"

  app "Nucleo.app"
end
