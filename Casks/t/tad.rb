cask "tad" do
  version "0.13.0"
  sha256 "4c71f6f6a0fadf65891663d1a0462dd8d3576a4c62bdd8721012cbdd61ee1fee"

  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/Tad-#{version}.dmg",
      verified: "github.com/antonycourtney/tad/"
  name "Tad"
  desc "Desktop application for viewing and analyzing tabular data"
  homepage "https://www.tadviewer.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tad.app"
  binary "#{appdir}/Tad.app/Contents/Resources/tad.sh", target: "tad"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.antonycourtney.tad.sfl*",
    "~/Library/Application Support/Tad",
    "~/Library/Logs/Tad",
    "~/Library/Preferences/com.antonycourtney.tad.plist",
    "~/Library/Saved Application State/com.antonycourtney.tad.savedState",
  ]
end
