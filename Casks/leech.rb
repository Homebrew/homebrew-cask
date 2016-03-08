cask 'leech' do
  version '2.2.3'
  sha256 '83ee1e8ddf62d5d462e7c953eff3f36220053518c7edfee1fcef78a8d13c47f0'

  url 'http://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast.xml',
          checkpoint: 'b24601aedbebbdc4d51f6bec40cfa567413a6cb34c83653af358f33f825b3de8'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'
  license :commercial

  auto_updates true

  app 'Leech.app'
end
