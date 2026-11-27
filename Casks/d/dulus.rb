cask "dulus" do
  arch arm: "arm64", intel: "x86_64"

  version "7.0.7"
  sha256 arm:   "4b5190296147cb14a5dfe1a2261e10e94f3792d2f75a3c1e275b96867fc1eafe",
         intel: "373a9e8dd64c5d357b110ed66495c2a6e5033c42b63d26eca734a611d42d6b80"

  url "https://github.com/Dulus-Ai/dulus-updates/releases/download/v#{version}/Dulus-#{version}-macos-#{arch}.dmg",
      verified: "github.com/Dulus-Ai/dulus-updates/"
  name "Dulus"
  desc "AI coding agent desktop app"
  homepage "https://dulus.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Dulus.app"

  zap trash: [
    "~/.dulus",
    "~/Library/Application Support/ai.dulus.desktop",
    "~/Library/Caches/ai.dulus.desktop",
    "~/Library/Preferences/ai.dulus.desktop.plist",
    "~/Library/Saved Application State/ai.dulus.desktop.savedState",
  ]
end
