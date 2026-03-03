cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "c0f63d96e65f6ac9da3d514f4d4e535a77614d3b62437ed4be0418f1b85d513b",
         intel: "a60632230e6279003ab72066a01d7d3f3fa8569b33ed3da4b294ccf93b4add5f"

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
