cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "7ee67b13f8e6a2656e30d4435e1b9afeb592d25f587a0297f3c21cead7703d05",
         intel: "909e40c5990b90f98d9feb160d989168e59bedb35ecf94a6d2e14fadf61c181c"

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
