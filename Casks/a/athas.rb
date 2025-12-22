cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "71f2bdb4e29e04ba7627cc07bb71c1ea543998b02291c6168954131e95c16250",
         intel: "efc78e0c9b93a09c43e52a5537e2ac373d0e840a6386330afb48b4cf8561d2e2"

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
