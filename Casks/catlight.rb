cask "catlight" do
  version "2.34.1"
  sha256 "6836696a307e70714da19ceae87d960a5d0e52dd83b3e2e3c36e1132878f5725"

  url "https://download.catlight.io/rel/mac/beta/CatLightSetup-#{version}.zip"
  appcast "https://catlight.io/downloads"
  name "catlight"
  homepage "https://catlight.io/"

  depends_on macos: ">= :sierra"

  app "Catlight.app"
end
