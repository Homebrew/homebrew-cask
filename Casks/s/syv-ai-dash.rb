cask "syv-ai-dash" do
  version "0.11.3"
  sha256 "2939042a58173c4f4061a17cb6ee14f9392ecec002f1032da56f8c1d36c59b3b"

  url "https://github.com/syv-ai/dash/releases/download/v#{version}/Dash-#{version}-mac-arm64.dmg"
  name "Dash"
  desc "Run Claude Code across multiple projects in isolated git worktrees"
  homepage "https://github.com/syv-ai/dash"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.syv.dash.sfl*",
    "~/Library/Application Support/Dash",
    "~/Library/Preferences/com.syv.dash.plist",
  ]
end
