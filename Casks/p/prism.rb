cask "prism" do
  version "10.0.3"
  sha256 "ab43ab53b962a9ec52f8d8037363f1e8c7aaa9c50b4d2e205c48a3fce2758e48"

  url "https://cdn.graphpad.com/downloads/prism/#{version.major}/#{version}/InstallPrism#{version.major}.dmg"
  name "GraphPad Prism"
  desc "Statistical analysis and graphing software"
  homepage "https://graphpad.com/"

  livecheck do
    url "https://www.graphpad.com/updates"
    regex(/"version":"(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Prism #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.graphpad.prism.sfl*",
    "~/Library/Application Support/GraphPad",
    "~/Library/Caches/com.GraphPad.Prism",
    "~/Library/HTTPStorages/com.GraphPad.Prism",
    "~/Library/Preferences/com.GraphPad.Prism.autocomplete.plist",
    "~/Library/Preferences/com.GraphPad.Prism.plist",
    "~/Library/Saved Application State/com.GraphPad.Prism.savedState",
    "~/Library/WebKit/com.GraphPad.Prism",
  ]
end
