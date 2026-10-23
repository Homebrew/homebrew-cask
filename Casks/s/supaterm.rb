cask "supaterm" do
  arch arm: "arm64", intel: "x64"

  version "26.10.4"
  sha256 arm:   "a37515b3651aab81b99452326e68528f316ab27a85f852f1879ce7b6496f4bc7",
         intel: "97c192bd0d43a161403157428e591cc9a611e56c9f15a1a6813cf0bde7ee1d5c"

  url "https://github.com/supabitapp/supaterm/releases/download/v#{version}/supaterm-#{version}-#{arch}.dmg"
  name "Supaterm"
  desc "Minimal GUI for coding agents"
  homepage "https://supaterm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Supaterm.app"

  zap trash: [
    "~/.supaterm",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.supaterm.desktop.sfl*",
    "~/Library/Application Support/supaterm-v2",
    "~/Library/Caches/com.supaterm.desktop",
    "~/Library/Caches/com.supaterm.desktop.ShipIt",
    "~/Library/Caches/supaterm-updater",
    "~/Library/HTTPStorages/com.supaterm.desktop",
    "~/Library/Preferences/com.supaterm.desktop.plist",
  ]
end
