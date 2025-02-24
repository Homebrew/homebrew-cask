cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.13.5"
  sha256 arm:   "a5cf29148df032fcbb1c03735de6ad73aaa6577c2d6519133eee455a04b67ef8",
         intel: "5a912bc609d4e91b6043e9b01d46cfa4562cdb9b1494276b3d56b0792af233f6"

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
