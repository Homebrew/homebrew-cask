cask 'mailpluginfix' do
  version '1.3.0'
  sha256 '921a65b098f7def758cbafcdfd1ed5f8459cb9cdb958e589679d6e9bc67d8184'

  url "https://code2k.net/app/MailPluginFix-#{version}.zip"
  name 'MailPluginFix'
  homepage 'https://code2k.net/products/mailpluginfix/'

  app 'MailPluginFix.app'

  zap delete: '~/Library/Preferences/net.code2k.MailPluginFix.plist'
end
