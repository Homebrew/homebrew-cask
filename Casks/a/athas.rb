cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "80cba8cf0ceadf673da5340e367699906e791ffa921a80ff4e169486e2ebe9be",
         intel: "7a4f1a4b304b29ed78033439174aff4576825f3ef64c8beb8f9341d1ff3be2b3"

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
