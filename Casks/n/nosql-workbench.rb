cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.20.5"
  sha256 arm:   "a6ee4fbe834c9ffce48073252357fb975d52f0393f4ec34c6b0a9627e2b4fd3c",
         intel: "6fb356f47cb6242648c7c84d1d7c1cde04eafe9ddbe0813369b0b7ad38376e57"

  url "https://nosql-workbench.s3.amazonaws.com/NoSQL%20Workbench-mac-#{arch}-#{version}.dmg"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  livecheck do
    url "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "NoSQL Workbench.app"

  uninstall quit: "com.dynamodb.workbench"

  zap trash: [
    "~/Library/Application Support/Caches/nosql-workbench-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dynamodb.workbench.sfl*",
    "~/Library/Application Support/NoSQL Workbench",
    "~/Library/Caches/com.dynamodb.workbench",
    "~/Library/Caches/com.dynamodb.workbench.ShipIt",
    "~/Library/Preferences/com.dynamodb.workbench.plist",
    "~/Library/Saved Application State/com.dynamodb.workbench.savedState",
  ]
end
