cask "cloudpouch" do
  version "1.45.0"
  sha256 "979400dad49950be9e253cf7542d4dfdc57892a62212fbb7de5054e6f74de841"

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
  depends_on :macos

  app "CloudPouch.app"

  zap trash: [
    "~/.cloudpouch-aws-sso-client-credentials",
    "~/Library/Application Support/CloudPouch",
    "~/Library/Logs/CloudPouch",
  ]
end
