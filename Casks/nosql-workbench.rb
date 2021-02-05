cask "nosql-workbench" do
  version "2.2.0"
  sha256 "7391d63e64a207024ebfa4ce001042984c6edb6a0bd70c7b3b370dc55e6e2a20"

  url "https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-mac-#{version}.dmg",
      verified: "s3.amazonaws.com/nosql-workbench/"
  appcast "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  app "NoSQL Workbench.app"
end
