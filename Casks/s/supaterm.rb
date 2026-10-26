cask "supaterm" do
  arch arm: "arm64", intel: "x64"

  version "26.10.6"
  sha256 arm:   "e16c276de9e56a50603f2547057a794db70c5c074e0b1d6e46dfcb746af17522",
         intel: "1f27ed547636448545606a95847d6b2a9b876db3e412e5b89e358579044376d0"

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
