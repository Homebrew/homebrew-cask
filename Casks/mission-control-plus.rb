cask "mission-control-plus" do
  version "1.21"
  sha256 "8297599c9e1df9e958760226fc00284d43cbb278f516506f0b3df39f01781033"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz",
      verified: "github.com/ronyfadel/MissionControlPlusReleases/"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on macos: ">= :high_sierra"

  app "Mission Control Plus.app"
end
