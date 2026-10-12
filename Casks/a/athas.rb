cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.3"
  sha256 arm:   "2d37e7d698fecc99c326fe39a0a3173d11eaab2bcf16df1a38c4628257a6d58b",
         intel: "15ffabd25c7b6fc13569b471afee71cbdfc352c9de9c258e910b75c5fcd5d401"

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
