cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.20.3"
  sha256 arm:   "726ec7b443748caa4f7a8bc4d5bc9a79e78da943359db0e34728884b0b5f5f45",
         intel: "93e4b438dcc2451e0049fc125af35f50450f0e8cdeb51feeaa7291012cebea78"

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
  depends_on :macos

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
