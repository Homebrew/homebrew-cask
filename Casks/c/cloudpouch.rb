cask "cloudpouch" do
  version "1.43.0"
  sha256 "547a3fd36412a4d323e2daa9c92c22dbcac0e792ea2ecf0c7937d5966b5a17de"

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
