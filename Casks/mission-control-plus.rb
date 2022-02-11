cask "mission-control-plus" do
  version "1.17"
  sha256 "724615c328d3a446d2d0a9d8f3030c45a291c394f5a9c856ad36d26d42145356"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz",
      verified: "github.com/ronyfadel/MissionControlPlusReleases/"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on macos: ">= :high_sierra"

  app "Mission Control Plus.app"
end
