cask "nosql-workbench" do
  version "3.2.0"
  sha256 "ffc9b3242a08a9899fdc71b96f68102b7d1c3c12b438c4eebb40c8562025e8e5"

  url "https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-mac-#{version}.dmg",
      verified: "s3.amazonaws.com/nosql-workbench/"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  livecheck do
    url "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "NoSQL Workbench.app"
end
