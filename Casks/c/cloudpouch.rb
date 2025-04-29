cask "cloudpouch" do
  version "1.38.0"
  sha256 "2610a75f91ba77bfcd5acad833442481d7c4c41cc726c2bef38e2e876680e1ba"

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
