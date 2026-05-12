cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "5c7db50ae2f7bb4efa0263e268d92d4ce9a0bdd3d0f45baf5dd8c45d7bf87d1c",
         intel: "ce13c18c7658beefdb0be851783bb2a1742213917e8d62dbe1cfd39e50e1d053"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
