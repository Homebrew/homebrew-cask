cask 'nosql-workbench-for-amazon-dynamodb' do
  version '1.0.0'
  sha256 'aee4e9daa7925f01385490678e0d852719fa3b845a7522dc0a98fceba61c8043'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.partial.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB.app'
end
