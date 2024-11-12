cask "nosql-workbench" do
  arch arm: "arm64", intel: "x64"

  version "3.13.3"
  sha256 arm:   "a64a7106fdf18585c7da64f2c4b068dc0857784319b92467adf668aeb4411d8b",
         intel: "b2868341574704a950b4eca4314cdd6d3753e47911ff96820e1db73e3c8ec051"

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
