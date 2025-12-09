cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "465669aee7c48f6c4f7206d3ccd419d0c1af20dd919dc59083a01ba51c5b9479",
         intel: "bcc5cdf03f86be63d3fb1c282186a9448eda39c297ba7068fd64286eb5f241ae"

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
