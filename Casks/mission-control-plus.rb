cask "mission-control-plus" do
  version "1.14"
  sha256 "8a89794c85dfab931d07bd309058064d6e3cf664057239d4cc75ce6b72276df4"

  # github.com/ronyfadel/MissionControlPlusReleases/ was verified as official when first introduced to the cask
  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/#{version}/Mission.Control.Plus.tgz"
  appcast "https://github.com/ronyfadel/MissionControlPlusReleases/releases.atom"
  name "Mission Control Plus"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on macos: ">= :high_sierra"

  app "Mission Control Plus.app"
end
