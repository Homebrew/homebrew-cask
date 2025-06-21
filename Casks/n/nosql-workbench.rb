cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.13.6"
  sha256 arm:   "6d4eebd66a5bd5415f91ca982181355998b5208f36ffd86a8bf3ff4e91d1e23e",
         intel: "e42df694a8921a882f441e0f8e5b28d6a9782ecbc7c3815cbfe737b2215a419d"

  url "https://nosql-workbench.s3.amazonaws.com/NoSQL%20Workbench-mac-#{arch}-#{version}.dmg",
      verified: "nosql-workbench.s3.amazonaws.com/"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  livecheck do
    url "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "NoSQL Workbench.app"

  zap trash: [
    "~/Library/Application Support/Caches/nosql-workbench-updater",
    "~/Library/Application Support/NoSQL Workbench",
    "~/Library/Caches/com.dynamodb.workbench",
    "~/Library/Caches/com.dynamodb.workbench.ShipIt",
    "~/Library/Preferences/com.dynamodb.workbench.plist",
    "~/Library/Saved Application State/com.dynamodb.workbench.savedState",
  ]
end
