cask 'nosql-workbench-for-amazon-dynamodb' do
  version '0.3.1'
  sha256 '16b71734e87f3feefbb8955cb7d47a8b24e7bdb1fdcbd7cb8092683888975e55'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB+(Preview)-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB (Preview).app'
end
