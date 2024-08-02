cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.32"
  sha256 arm:   "8a1c37119513cf3323e7c9aee8c4ecc9a2d74bd776cdd3cbcc29f84745813e15",
         intel: "07098186cb9f2499f9763c88be42f7470b8c2ea1bc9f4c0311d724b971259c82"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
