cask 'nosql-workbench-for-amazon-dynamodb' do
  version '0.3.0'
  sha256 '8cf0d7eac9d73a1f5c761dcfe22e617cc384c5d27a49c80d0258070d548201fe'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB+(Preview)-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.settingup.partial.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB (Preview).app'
end
