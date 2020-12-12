cask "nosql-workbench" do
  version "2.1.0"
  sha256 "c3aa1b994f825a3929c0f474e1cfeb092263b9ea3fc735409835e9e8d238df65"

  # s3.amazonaws.com/nosql-workbench/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-mac-#{version}.dmg"
  appcast "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  app "NoSQL Workbench.app"
end
