cask "nosql-workbench" do
  version "3.2.1"
  sha256 "9ba882155b04822d380bb454fbd0c6b00a6dc9a4e96e8e6c518d121601015d07"

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
