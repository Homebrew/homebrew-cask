cask "flipper" do
  version "0.55.0"
  sha256 "65f17a347952059f89c0256702b9efde59d9a16b24eea00b730d374187335ac2"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
