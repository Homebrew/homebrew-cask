cask "buckets" do
  version "0.69.0"
  sha256 "bd783ebd3f76d5e517886c802e2f0eaa103744704e35978a91d364c25ed00900"

  url "https://github.com/buckets/application/releases/download/v#{version}/Buckets-#{version}.dmg",
      verified: "github.com/buckets/application/"
  name "Buckets"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Buckets.app"

  zap trash: [
    "~/Library/Application Support/Buckets",
    "~/Library/Preferences/com.github.buckets.application.plist",
  ]
end
