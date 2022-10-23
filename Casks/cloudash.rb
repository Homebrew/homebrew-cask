cask "cloudash" do
  version "1.18.0"
  sha256 "74bfa741771a8075c78e060567db7d37d90fd82853d2e4981cc9a34c109d42f0"

  url "https://github.com/cloudashdev/cloudash/releases/download/#{version}/Cloudash-#{version}.dmg",
      verified: "github.com/cloudashdev/cloudash/"
  name "cloudash"
  desc "Monitoring and troubleshooting for serverless architectures"
  homepage "https://cloudash.dev/"

  app "Cloudash.app"

  zap trash: [
    "~/Library/Application Support/cloudash",
    "~/Library/Logs/Cloudash",
    "~/Library/Preferences/dev.cloudash.cloudash.plist",
    "~/Library/Saved Application State/dev.cloudash.cloudash.savedState",
  ]
end
