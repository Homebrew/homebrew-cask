cask "prism" do
  version "10.0.2"
  sha256 "9693065db9dcfde44baa091a12761532ac29216db5864bb84ec3ea96bcf2c380"

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
