cask "prism" do
  version "9.5.1"
  sha256 "7ffedef33a7b21b78d99fe0d7cf30f3f8e372e58e0d6d3472a0fb4f9c4084cda"

  url "https://cdn.graphpad.com/downloads/prism/#{version.major}/#{version}/InstallPrism#{version.major}.dmg"
  name "GraphPad Prism"
  desc "Statistical analysis and graphing software"
  homepage "https://graphpad.com/"

  livecheck do
    url "https://www.graphpad.com/updates"
    regex(/Prism\s(\d+(?:\.\d+)+)\sRelease\sNotes/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Prism #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.graphpad.prism.sfl2",
    "~/Library/Caches/com.GraphPad.Prism",
    "~/Library/HTTPStorages/com.GraphPad.Prism",
    "~/Library/Preferences/com.GraphPad.Prism.autocomplete.plist",
    "~/Library/Preferences/com.GraphPad.Prism.plist",
    "~/Library/Saved Application State/com.GraphPad.Prism.savedState",
    "~/Library/WebKit/com.GraphPad.Prism",
  ]
end
