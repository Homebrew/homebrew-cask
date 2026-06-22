cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "90612cc748e96585faf99e2082a1157eac298627d00974b06bbb9b2199a592a3",
         intel: "afd12c9bb5c02fab2bbfa7ffe13fab270954360cc9c7f39531930c07e027487d"

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
