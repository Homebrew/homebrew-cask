cask "cloudash" do
  version "1.14.2"
  sha256 "c6877529d09e8651999cf6243f57892b256649937e75dd44586b4d1c78c3f886"

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
