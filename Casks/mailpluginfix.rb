cask 'mailpluginfix' do
  version '1.4.0'
  sha256 '811cf27322a08d4ddbc4780c78cf34ea07595a269902b62ccdcdb6ac00142cf3'

  url "https://code2k.net/app/MailPluginFix-#{version}.zip"
  name 'MailPluginFix'
  homepage 'https://code2k.net/products/mailpluginfix/'

  app 'MailPluginFix.app'

  zap delete: '~/Library/Preferences/net.code2k.MailPluginFix.plist'
end
