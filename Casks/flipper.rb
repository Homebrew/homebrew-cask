cask "flipper" do
  version "0.53.0"
  sha256 "4523da16189c1171e82637ce40c116eb19578fa57946167b6993d271c1824795"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
