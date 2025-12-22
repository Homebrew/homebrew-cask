cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "7b5b1cb5b27fee3de77e8cf749259fb5a197d6f7f7aa657013a80f7ed894a5f5",
         intel: "65adc69ebc104d8efedf961acc9aa0519bf22039d1d6c85a9249cd3c6c60d7cb"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
