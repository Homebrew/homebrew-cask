cask "cloudpouch" do
  version "1.49.0"
  sha256 "407cbb258fedcc170c98175e6e83e23f9674855c9dbf59eebb6378140b713948"

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
  depends_on macos: :monterey

  app "CloudPouch.app"

  zap trash: [
    "~/.cloudpouch-aws-sso-client-credentials",
    "~/Library/Application Support/CloudPouch",
    "~/Library/Logs/CloudPouch",
  ]
end
