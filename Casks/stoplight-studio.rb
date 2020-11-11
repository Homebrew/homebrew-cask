cask "stoplight-studio" do
  version "2.1.0"
  sha256 "b7348eb320ebe5e65889f0b1fffac29bbd49949adbf8cb781486050d3762156d"

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast "https://github.com/stoplightio/studio/releases.atom"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  app "Stoplight Studio.app"
end
