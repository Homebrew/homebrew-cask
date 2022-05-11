cask "buckets" do
  version "0.66.3"
  sha256 "ec509712d72034448f3e2763f681eeed9eeed7fdccd5ee8c9ea0683cd61c09e9"

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
