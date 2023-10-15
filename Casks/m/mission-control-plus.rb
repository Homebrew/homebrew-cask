cask "mission-control-plus" do
  version "1.23"
  sha256 "6f91e918d6a6b1456c03de0e6d946b8f313e7a239c7dc4254dffc68a694961b3"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz",
      verified: "github.com/ronyfadel/MissionControlPlusReleases/"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on macos: ">= :high_sierra"

  app "Mission Control Plus.app"
end
