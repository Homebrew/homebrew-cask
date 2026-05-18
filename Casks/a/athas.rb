cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "167923b66da96686dc44230ab2a61bdde225a7fe4856fe4ad339819871b23887",
         intel: "58893d5ef28117bf11a993463b403e8357d35783643feb88aa4e4cde982a493b"

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
