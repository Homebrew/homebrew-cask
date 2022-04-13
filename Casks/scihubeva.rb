cask "scihubeva" do
  version "5.1.2"
  sha256 "73c0bc514318f79a7ed58b41c6c99ffe392426bd81979fc464e4b83a882e0a66"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-v#{version}.dmg"
  name "SciHubEVA"
  desc "Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
