cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.12.0"
  sha256 arm:   "41c5526746a97647a845da9bef7e84882a1017446d0179b4c32a32ed3a355f0f",
         intel: "f5c4cda823a5946650263784c84fb791abe33ddc9958558711cdd4aff0dab6c4"

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
