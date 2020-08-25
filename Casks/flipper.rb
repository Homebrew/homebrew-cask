cask "flipper" do
  version "0.54.0"
  sha256 "73180b1406fe1108aa5375edda77a51c4685a4d643b13abee1901b4d24676e6e"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
