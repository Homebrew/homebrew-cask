cask "flipper" do
  version "0.56.0"
  sha256 "7a6b03e468452973830c74aa818ba5653a8f8f4f81e23431fd115640d9fdd443"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
