cask "cloudpouch" do
  version "1.42.0"
  sha256 "0470c6f9321fe66a1c0190a79e50014c7b790e7a2d5ba1c45a74381d72ae9c10"

  url "https://github.com/CloudPouch/CloudPouch.dev/releases/download/v#{version}/CloudPouch-#{version}-universal-mac.zip",
      verified: "github.com/CloudPouch/CloudPouch.dev/"
  name "CloudPouch"
  desc "AWS cloud FinOps tool"
  homepage "https://cloudpouch.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "CloudPouch.app"

  zap trash: [
    "~/.cloudpouch-aws-sso-client-credentials",
    "~/Library/Application Support/CloudPouch",
    "~/Library/Logs/CloudPouch",
  ]
end
