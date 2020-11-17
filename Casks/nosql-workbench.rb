cask "nosql-workbench" do
  version "2.0.0"
  sha256 "020d1127c4fc4164eb442d69fe26e3e234a25eab0c741c6d12a6df9409cea5e0"

  # s3.amazonaws.com/nosql-workbench/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-mac-#{version}.dmg"
  appcast "https://nosql-workbench.s3.amazonaws.com/latest-mac.yml"
  name "NoSQL Workbench"
  desc "Client-side GUI application for modern database development and operations"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  app "NoSQL Workbench.app"
end
