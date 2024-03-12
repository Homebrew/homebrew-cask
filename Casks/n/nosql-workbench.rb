cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.12.1"
  sha256 arm:   "cebc1e19e2e1c97f2a60d66c2eb43d9a441c0e9d4365a9356a47a1f9ec81fcb0",
         intel: "82015cdce14eedbc7131a39643e38eb5b71a8eb769b8f476c31386b86813549e"

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
