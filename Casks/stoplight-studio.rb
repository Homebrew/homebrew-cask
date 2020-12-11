cask "stoplight-studio" do
  version "2.2.0,5282.b08742e"
  sha256 "8712f55657d5d9283bb0e1d11718b8e55cbceb87bcbd90bf9d4952a6602eae6c"

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg"
  appcast "https://github.com/stoplightio/studio/releases.atom"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  app "Stoplight Studio.app"
end
