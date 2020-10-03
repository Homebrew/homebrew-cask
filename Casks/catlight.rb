cask "catlight" do
  version "2.33.1"
  sha256 "b86672da20ba8a89733b732b7c1e9a070704551cd0ab1cc3ed7bc8fd6547f15a"

  url "https://download.catlight.io/rel/mac/beta/CatLightSetup-#{version}.zip"
  appcast "https://catlight.io/downloads"
  name "catlight"
  homepage "https://catlight.io/"

  depends_on macos: ">= :sierra"

  app "Catlight.app"
end
