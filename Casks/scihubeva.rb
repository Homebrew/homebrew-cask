cask "scihubeva" do
  version "5.0.0"
  sha256 "6133fd7efb9b2c2b544277dd586e407c70dc6320130f0661f9e089308bc28911"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-v#{version}.dmg"
  name "SciHubEVA"
  desc "Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
