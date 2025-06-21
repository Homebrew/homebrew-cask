cask "mission-control-plus" do
  version "1.24"
  sha256 "b791fc0f174c1c0082176178c5a1671841fc0a3c90de9d5cb9d13ed9c21cc765"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz",
      verified: "github.com/ronyfadel/MissionControlPlusReleases/"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  app "Mission Control Plus.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.fadel.missioncontrolplus.sfl*"
end
