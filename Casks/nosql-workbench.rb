cask "nosql-workbench" do
  version "3.1.0"
  sha256 "7bdf3b465ba4cd8114ebb6f6f379feea9048b635511177dc304f3cf3d61520e3"

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
