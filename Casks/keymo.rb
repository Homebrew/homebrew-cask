cask 'keymo' do
  version '1.2.2'
  sha256 '6da934a395dd4064c59a9e235505337d6b45a24f4e1eacd1810fdff55f985216'

  url 'https://manytricks.com/download/keymo'
  appcast 'https://manytricks.com/keymo/appcast.xml',
          checkpoint: '0fada217a8b17fe20397e043c45a94fa984b8928877efb59ffa88997c5b2939a'
  name 'Keymo'
  homepage 'https://manytricks.com/keymo'
  license :commercial

  app 'Keymo.app'

  zap delete: '~/Library/Preferences/com.manytricks.Keymo.plist'
end
