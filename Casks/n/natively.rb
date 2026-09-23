cask "natively" do
  arch arm: "-arm64"

  version "2.8.8"
  sha256 arm:   "db6d48883b9c8d4c527e25fce5c8703b99eed57f4be1ae00d286223071fffe06",
         intel: "cd90dccd3a2838270da1a7f98419777d1a85498fb8d6356fbdd4bd98a12f37fe"

  url "https://github.com/Natively-AI-assistant/natively-cluely-ai-assistant/releases/download/V#{version}/Natively-#{version}#{arch}.dmg"
  name "Natively"
  desc "AI interview copilot & real-time meeting assistant"
  homepage "https://natively.software/"

  livecheck do
    url :url
    regex(/^V?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Natively.app"

  zap trash: [
    "~/Library/Application Support/com.electron.meeting-notes",
    "~/Library/Application Support/natively",
    "~/Library/Caches/com.electron.meeting-notes",
    "~/Library/Caches/com.electron.meeting-notes.ShipIt",
    "~/Library/HTTPStorages/com.electron.meeting-notes",
    "~/Library/Preferences/com.electron.meeting-notes.plist",
    "~/Library/Saved Application State/com.electron.meeting-notes.savedState",
  ]
end
