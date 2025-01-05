cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.13.4"
  sha256 arm:   "16ceb5d8654b551b53efd63b8f2ca0ad4ce6815953ee662f3635adb6accbdd15",
         intel: "76e0331e8840dc572806719b58f17a7e4365ac0e6cdff9ab1d5f86c995c3eabe"

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
