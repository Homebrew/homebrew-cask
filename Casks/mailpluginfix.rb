cask 'mailpluginfix' do
  version '1.2.2'
  sha256 '982436b8a6bb3348fadc44e5ecd182e492a0d0ce1ae86136b84b57d45284198c'

  url 'https://code2k.net/app/MailPluginFix-1.2.2.zip'
  name 'MailPluginFix'
  homepage 'https://code2k.net/products/mailpluginfix/'
  license :gratis

  app 'MailPluginFix.app'

  zap delete: '~/Library/Preferences/net.code2k.MailPluginFix.plist'
end
