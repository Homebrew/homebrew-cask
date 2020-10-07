cask "origami-studio" do
  version "249675454"
  sha256 "97c425a5844201a00f5b81b05f5217628b2a837bf15fe0842036dc6fc2b4c0af"

  # fb.me/ was verified as official when first introduced to the cask
  url "https://fb.me/getorigamistudio"
  appcast "https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571"
  name "Origami Studio"
  homepage "https://origami.design/"

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"
end
