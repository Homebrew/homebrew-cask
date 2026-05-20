cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "a2c2d1e16927b72beeb3c864300f035adc3d23a7f60acb5fb6cd9d0c2e39478d",
         intel: "a7a874572234866fe41b82d4cf7e5a34184f1b08a326935785ca4d922b68a00b"

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
