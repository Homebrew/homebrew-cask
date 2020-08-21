cask "openaudible" do
  version "2.3.3"
  sha256 "8a89de004d43758448b9397ff98da2871c31c4c67621619e1f1f31ff18a9820d"

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast "https://github.com/openaudible/openaudible/releases.atom"
  name "OpenAudible"
  homepage "https://openaudible.org/"

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
