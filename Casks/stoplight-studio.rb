cask "stoplight-studio" do
  version "2.2.0,5288.8bf0d2e"
  sha256 "8542108cc761eb7e92240d7a1d5613a24f9a7fd98727d979f93fedf9978b52de"

  url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg",
      verified: "github.com/stoplightio/studio/"
  appcast "https://github.com/stoplightio/studio/releases.atom"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  app "Stoplight Studio.app"
end
