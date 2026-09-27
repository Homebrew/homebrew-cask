cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "d056328c2bd3633171a9353ba037d573ad12c3f80d3db468eacfbff1a307d2ac",
         intel: "c891f24b211f2591e1dfe01925544a993caedd587ceec6e3bb3137b5e46d32ba"

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
