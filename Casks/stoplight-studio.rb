cask "stoplight-studio" do
  version "2.0.0"
  sha256 "99dcb8ac4c140f472cfaa6e3d3046fa2f2ece0ba631a4a8a1c6c9b1056876467"

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast "https://github.com/stoplightio/studio/releases.atom"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  app "Stoplight Studio.app"
end
