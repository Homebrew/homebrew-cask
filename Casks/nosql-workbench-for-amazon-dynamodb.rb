cask 'nosql-workbench-for-amazon-dynamodb' do
  version '0.2.0'
  sha256 'a3300b4ac00f4f82ff0ea0114f3280c50eaa2e22aee602162c87989d605251b8'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB+(Preview)-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.settingup.partial.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB (Preview).app'
end
