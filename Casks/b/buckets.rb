cask "buckets" do
  version "0.70.5"
  sha256 "1e8c68367ae030a75dc7ca66ed7a3a4fbc2d1a58d7b933697336f43fdfa510df"

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
