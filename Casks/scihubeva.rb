cask "scihubeva" do
  version "v4.1.1"
  sha256 "2b652b98b360a3e950b247fcdc4ef1f20d86910bdf6d6cefd025ed37996e2725"

  url "https://github.com/leovan/SciHubEVA/releases/download/#{version}/SciHubEVA-#{version}.dmg"
  appcast "https://github.com/leovan/SciHubEVA/releases.atom"
  name "SciHubEVA"
  desc "Cross-platform Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
