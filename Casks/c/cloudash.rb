cask "cloudash" do
  arch arm: "-arm64"

  version "1.22.1"
  sha256 arm:   "94ce30488721f5511433994ed4fbc045fe6b4ec54b06e37f23cb343b19b33556",
         intel: "73451741b9ddf1d26eecd2ae21d92602e2c2eae414eab6329243fa75cd18428c"

  url "https://github.com/cloudashdev/cloudash/releases/download/#{version}/Cloudash-#{version}#{arch}.dmg",
      verified: "github.com/cloudashdev/cloudash/"
  name "cloudash"
  desc "Monitoring and troubleshooting for serverless architectures"
  homepage "https://cloudash.dev/"

  depends_on macos: ">= :high_sierra"

  app "Cloudash.app"

  zap trash: [
    "~/Library/Application Support/cloudash",
    "~/Library/Logs/Cloudash",
    "~/Library/Preferences/dev.cloudash.cloudash.plist",
    "~/Library/Saved Application State/dev.cloudash.cloudash.savedState",
  ]
end
