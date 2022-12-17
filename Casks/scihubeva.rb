cask "scihubeva" do
  version "6.0.0"
  sha256 "3aa3e0fc66a3231d3848bd601b8d50737c389a59c24a75d7f0d341a353fd4c9e"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-v#{version}.dmg"
  name "SciHubEVA"
  desc "Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
