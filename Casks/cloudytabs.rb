cask "cloudytabs" do
  version "2.0"
  sha256 "ce3f7c71b134798bbcf607cfacea215c20f1d527d3e3464edbd6510df26e5dac"

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast "https://github.com/josh-/CloudyTabs/releases.atom"
  name "CloudyTabs"
  desc "Menu bar application that lists iCloud Tabs"
  homepage "https://github.com/josh-/CloudyTabs/"

  app "CloudyTabs.app"
end
