cask "prism" do
  version "10.0.1"
  sha256 "a8f06caf21e457957cd0a39d24d5e06eb47d90d6fd010b4dc1abc46a9aaf36ae"

  url "https://cdn.graphpad.com/downloads/prism/#{version.major}/#{version}/InstallPrism#{version.major}.dmg"
  name "GraphPad Prism"
  desc "Statistical analysis and graphing software"
  homepage "https://graphpad.com/"

  livecheck do
    url "https://licenses.graphpad.com/updates?&version=#{version}&configuration=full&platform=Mac&osVersion=13"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Prism #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.graphpad.prism.sfl2",
    "~/Library/Application Support/GraphPad",
    "~/Library/Caches/com.GraphPad.Prism",
    "~/Library/HTTPStorages/com.GraphPad.Prism",
    "~/Library/Preferences/com.GraphPad.Prism.autocomplete.plist",
    "~/Library/Preferences/com.GraphPad.Prism.plist",
    "~/Library/Saved Application State/com.GraphPad.Prism.savedState",
    "~/Library/WebKit/com.GraphPad.Prism",
  ]
end
