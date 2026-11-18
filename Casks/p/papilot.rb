cask "papilot" do
  arch arm: "arm64", intel: "x64"

  version "0.10.4"
  sha256 arm:   "7de64a69bd3ab75b55f51f4984680634e835b4c78ee47c33e9281696125fd5a9",
         intel: "19249872a36d6f142a39e94bde33dbc476651875525d1184a30d102801863832"

  url "https://github.com/PapilotAI/papilot/releases/download/v#{version}/Papilot-#{version}-mac-#{arch}.dmg"
  name "Papilot"
  desc "AI-assisted workspace for LaTeX papers"
  homepage "https://papilot.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Papilot.app"

  zap trash: [
    "~/Library/Application Support/Papilot",
    "~/Library/Logs/Papilot",
    "~/Library/Preferences/ai.papilot.desktop.plist",
    "~/Library/Saved Application State/ai.papilot.desktop.savedState",
  ]
end
