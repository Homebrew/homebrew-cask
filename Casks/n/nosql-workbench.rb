cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.11.0"
  sha256 arm:   "2f31e208cac33960ee30d924a232e02a7f941bbc7beb0480cf405aa725a40335",
         intel: "28cdda0c3b10199c14294fe8af478ea0ff2890038f1fbabc28be3a4707ea8733"

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
