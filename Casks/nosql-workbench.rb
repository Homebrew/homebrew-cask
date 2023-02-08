cask "nosql-workbench" do
  version "3.4.0"
  sha256 "f3ef6b40a7cdefaf3ad789341fabe2c1b0d247f872b054e8a76ce412837de36a"

  url "https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-mac-#{version}.dmg",
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
end
