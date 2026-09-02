cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "2b056eaa782b06ecd683d2b11c6eab17565cd0eab4a57921781c1d475b824736",
         intel: "ba10f9d44e972972bb30be2d10c1b71d0a024854b38986aac269bce58a9c0477"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Athas.app"

  uninstall quit: "com.code.athas"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
