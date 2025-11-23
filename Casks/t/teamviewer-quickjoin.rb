cask "teamviewer-quickjoin" do
  version "15"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.teamviewer.com//download/version_#{version}x/TeamViewerQJ.dmg"
  name "TeamViewer QuickJoin"
  name "TeamViewer QJ"
  desc "Standalone TeamViewer app for joining presentations and meetings"
  homepage "https://www.teamviewer.com/"

  livecheck do
    url "https://dl.teamviewer.com/download/TeamViewerQJ.dmg"
    regex(%r{/version[._-]v?(\d+)x/TeamViewerQJ\.dmg}i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "TeamViewerQJ.app", target: "TeamViewer QuickJoin.app"

  zap trash: [
    "~/Library/Preferences/com.teamviewer.TeamViewerQJ.plist",
    "~/Library/Saved Application State/com.teamviewer.TeamViewerQJ.savedState",
  ]
end
