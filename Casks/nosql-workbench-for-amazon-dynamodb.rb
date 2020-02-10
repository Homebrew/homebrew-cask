cask 'nosql-workbench-for-amazon-dynamodb' do
  version '0.4.0'
  sha256 '7da0af6ad0eddc428073fda0b06ac9a30f11fe423f1939462abce962ace77550'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB+(Preview)-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB (Preview).app'
end
