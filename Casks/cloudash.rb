cask "cloudash" do
  version "1.0.2"
  sha256 "b8e72678c88a04bc9def11f2dfe18bc99941a53004802a2a53cec227b82042a9"

  url "https://github.com/cloudashdev/cloudash/releases/download/#{version}/Cloudash-#{version}.dmg",
      verified: "github.com/cloudashdev/cloudash/"
  name "cloudash"
  desc "Monitoring and troubleshooting for serverless architectures"
  homepage "https://cloudash.dev/"

  app "Cloudash.app"
end
