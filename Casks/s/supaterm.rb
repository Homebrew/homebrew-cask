cask "supaterm" do
  arch arm: "arm64", intel: "x64"

  version "26.10.8"
  sha256 arm:   "4ec7df115d1805ed059d31ee08cd25bdc551e5ac7b3f94d87fe7433fefab7d50",
         intel: "c9046cb801e26bf2be147c151cb362586a2cc8b7a9ffce26ef8e2a6f0579248c"

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
