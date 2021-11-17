cask "buckets" do
  version "0.60.1"
  sha256 "d09c1781a34d5406dd632acfaaa8e7f79f4549fcf9d46f6acc69d74e5c1d7b6a"

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
