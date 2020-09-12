cask "stretchly" do
  version "1.1.0"
  sha256 "23f2d5bb951b06f924b92e8a3d8b5b343d32c8c35b9e03c67f1620a8c5711eb4"

  # github.com/hovancik/stretchly/ was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg"
  appcast "https://github.com/hovancik/stretchly/releases.atom"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
