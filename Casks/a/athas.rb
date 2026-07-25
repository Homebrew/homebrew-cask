cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "6b8fdbc8a89da35491dcf3ec5fe49dcfee7d4ceb67a377470f75b28f742392f5",
         intel: "0549189aba4e6b18fb623bf75f6817c76d18731c32006929ebcad2c5f0473429"

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
