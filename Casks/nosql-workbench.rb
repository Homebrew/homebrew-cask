cask "nosql-workbench" do
  version "3.2.2"
  sha256 "7c266b429e4a0ddd026d4e7cdb7305320442deb959bcb1adbce833e293d8d5a1"

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
