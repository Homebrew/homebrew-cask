cask "mission-control-plus" do
  version "1.19"
  sha256 "f93e7fd54c7909b0f946b9c4288323ebc443341ce62e5ba6cc321a7b3a6c9f14"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz",
      verified: "github.com/ronyfadel/MissionControlPlusReleases/"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on macos: ">= :high_sierra"

  app "Mission Control Plus.app"
end
