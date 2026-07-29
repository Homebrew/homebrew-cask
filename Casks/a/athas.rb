cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "244fa901f0481b2c8b8fc8e7f4eafe6f5401296d84e92d90f5c0c85ca143b845",
         intel: "e6477f1b973de6effa955a024a1f1f69a4bfd489ce3c3e678b9741726d060534"

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
