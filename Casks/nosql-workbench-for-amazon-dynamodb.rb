cask "nosql-workbench-for-amazon-dynamodb" do
  version "1.1.0"
  sha256 "5b3a3862feeece47ea798111c33dc9c63da94309c6425a8d45b4d3d286fd683f"

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB-mac-#{version}.dmg"
  appcast "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.partial.html"
  name "NoSQL Workbench for Amazon DynamoDB"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html"

  app "NoSQL Workbench for Amazon DynamoDB.app"
end
