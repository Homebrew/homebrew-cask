cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "f17740cf93118b9c41ff3f5dacbcbe9a8d917dad884cd5e331df5fa49168161f",
         intel: "0acca47612484e3cc9dfbc2f4f09c2093ab3a2b313e40191205c76061d9569a8"

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
