cask "cloudytabs" do
  version "2.0"
  sha256 "ce3f7c71b134798bbcf607cfacea215c20f1d527d3e3464edbd6510df26e5dac"

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  name "CloudyTabs"
  desc "Menu bar application that lists iCloud Tabs"
  homepage "https://github.com/josh-/CloudyTabs/"

  deprecate! date: "2024-06-16", because: :repo_archived

  depends_on macos: ">= :high_sierra"

  app "CloudyTabs.app"
end
