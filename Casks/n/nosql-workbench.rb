cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.20.4"
  sha256 arm:   "99c791508024fb7c289a9833eaaa7398401fe43bb824f6740853ea46c3c908c3",
         intel: "d21c330baea86a7df5dc269ad80870818481db2bb709fce168fe3df66babd09d"

  url "https://nosql-workbench.s3.amazonaws.com/NoSQL%20Workbench-mac-#{arch}-#{version}.dmg"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  livecheck do
    url "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "NoSQL Workbench.app"

  uninstall quit: "com.dynamodb.workbench"

  zap trash: [
    "~/Library/Application Support/Caches/nosql-workbench-updater",
    "~/Library/Application Support/NoSQL Workbench",
    "~/Library/Caches/com.dynamodb.workbench",
    "~/Library/Caches/com.dynamodb.workbench.ShipIt",
    "~/Library/Preferences/com.dynamodb.workbench.plist",
    "~/Library/Saved Application State/com.dynamodb.workbench.savedState",
  ]
end
