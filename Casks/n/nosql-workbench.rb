cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.13.0"
  sha256 arm:   "403d05ea89cfdc684c448ccd89fc7f4599313c84bf18cb67178ceba39ca0b9c8",
         intel: "0e87f51752d30f8efcc21ee34d1e73c0599baefc8239654efc2d505d379b8b77"

  url "https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-mac-#{arch}-#{version}.dmg",
      verified: "s3.amazonaws.com/nosql-workbench/"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  livecheck do
    url "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

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
