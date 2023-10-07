cask "cloudash" do
  version "1.21.0"
  sha256 "b18a9ca643030586ece2ae12d485de3c8e43c6d1f572ce6b977a9b1b6aec7f86"

  url "https://github.com/cloudashdev/cloudash/releases/download/#{version}/Cloudash-#{version}.dmg",
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
