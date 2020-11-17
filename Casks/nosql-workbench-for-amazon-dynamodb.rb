cask "nosql-workbench-for-amazon-dynamodb" do
  version "2.0.0"
  sha256 "020d1127c4fc4164eb442d69fe26e3e234a25eab0c741c6d12a6df9409cea5e0"

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB-mac-#{version}.dmg"
  appcast "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.partial.html"
  name "NoSQL Workbench for Amazon DynamoDB"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  app "NoSQL Workbench for Amazon DynamoDB.app"
end
