cask "prism" do
  version "10.1.1"
  sha256 "a32fc715c388f3bb810edf8b4b22272e38a70255e1cb32fb8a366f04575a7380"

  url "https://cdn.graphpad.com/downloads/prism/#{version.major}/#{version}/InstallPrism#{version.major}.dmg"
  name "GraphPad Prism"
  desc "Statistical analysis and graphing software"
  homepage "https://graphpad.com/"

  livecheck do
    url "https://licenses.graphpad.com/updates?version=#{version}&configuration=full&platform=Mac&osVersion=14"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Prism #{version.major}.app"

  zap delete: [
        "/Library/Application Support/GraphPad",
        "/Library/GraphPad",
      ],
      trash:  [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.graphpad.prism.sfl*",
        "~/Library/Application Support/GraphPad",
        "~/Library/Caches/com.GraphPad.Prism",
        "~/Library/HTTPStorages/com.GraphPad.Prism",
        "~/Library/Logs/GraphPad",
        "~/Library/Preferences/com.GraphPad.Prism.autocomplete.plist",
        "~/Library/Preferences/com.GraphPad.Prism.plist",
        "~/Library/Saved Application State/com.GraphPad.Prism.savedState",
        "~/Library/WebKit/com.GraphPad.Prism",
      ]
end
