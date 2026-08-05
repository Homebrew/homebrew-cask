cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "818e2f56ec04d2992751df83e65577260879e25926a11285868121f8ad00e124",
         intel: "fda7b6e78076faab4a1d4a00ac4d2bd7d1e9ab86772f2ed765582c7a4dd4dd21"

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
