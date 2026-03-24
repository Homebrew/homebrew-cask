cask "rply" do
  version "2.1.2"
  sha256 "a1a1c93a9f3c7ffea64f0549d7a97f54d3952731514dadf99655e61e5f8a5638"

  url "https://nox-website.s3.us-east-2.amazonaws.com/RPLY.dmg",
      verified: "nox-website.s3.us-east-2.amazonaws.com/"
  name "RPLY"
  desc "iMessage inbox assistant"
  homepage "https://www.heynox.com/rply/download"

  app "RPLY.app"

  zap trash: [
    "~/Library/Application Support/com.noxai.nox.RPLY",
    "~/Library/Caches/com.noxai.nox.RPLY",
    "~/Library/Preferences/com.noxai.nox.RPLY.plist",
  ]
end
