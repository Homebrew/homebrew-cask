cask "supaterm" do
  arch arm: "arm64", intel: "x64"

  version "26.10.5"
  sha256 arm:   "0fd1d0fc658b4cdf265e46d04d3c75a94c178c88de9b2c694d922a4fa6aa4f94",
         intel: "4aba0a837794c6d157407c24819889904a4417b000ec7c73375a3b64a66a4ce2"

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
