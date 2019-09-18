cask 'nosql-workbench-for-amazon-dynamodb' do
  version '0.1.0'
  sha256 '8f5879c748f9b99a09744e37bd4eab67fcdaf9ba0351bfd47496c3efb6e9b0b8'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB+(Preview)-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.settingup.partial.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB (preview).app'
end
