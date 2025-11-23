cask "teamviewer-quicksupport" do
  version "15"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.teamviewer.com/download/version_#{version}x/TeamViewerQS.dmg"
  name "TeamViewer QuickSupport"
  name "TeamViewer QS"
  desc "Remote support for computers and mobile devices"
  homepage "https://www.teamviewer.com/"

  livecheck do
    url "https://dl.teamviewer.com/download/TeamViewerQS.dmg"
    regex(%r{/version[._-]v?(\d+)x/TeamViewerQS\.dmg}i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "TeamViewerQS.app", target: "TeamViewer QuickSupport.app"

  zap trash: [
    "~/Library/Preferences/com.teamviewer.TeamViewerQS.plist",
    "~/Library/Saved Application State/com.teamviewer.TeamViewerQS.savedState",
  ]
end
