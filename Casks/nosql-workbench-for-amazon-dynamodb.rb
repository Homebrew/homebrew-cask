cask 'nosql-workbench-for-amazon-dynamodb' do
  version '0.2.1'
  sha256 '3de7c9107a6613aab219c2aed666cd77d498d1e7e5d092ada5571bd4af984a41'

  # nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB+(Preview)-mac-#{version}.dmg"
  appcast 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.settingup.partial.html'
  name 'NoSQL Workbench for Amazon DynamoDB'
  homepage 'https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/workbench.html'

  app 'NoSQL Workbench for Amazon DynamoDB (Preview).app'
end
