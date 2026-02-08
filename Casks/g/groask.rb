cask "groask" do
  version "1.6.7"
  sha256 "6d2d4a6232402afb73ec5534570c28ef0d74fc17adde5d7a95ecf8fca469038b"

  url "https://github.com/ThinkerJack/groask-release/releases/download/v#{version}/GroAsk.dmg",
      verified: "github.com/ThinkerJack/groask-release/"
  name "GroAsk"
  desc "Menu bar AI launcher for ChatGPT, Claude, and Gemini"
  homepage "https://groask.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "GroAsk.app"

  uninstall quit: "com.gro.ask"

  zap trash: [
    "~/Library/Application Support/com.gro.ask",
    "~/Library/Caches/com.gro.ask",
    "~/Library/HTTPStorages/com.gro.ask",
    "~/Library/Preferences/com.gro.ask.plist",
    "~/Library/Saved Application State/com.gro.ask.savedState",
  ]
end
