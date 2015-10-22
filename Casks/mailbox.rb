cask :v1 => 'mailbox' do
  version '0.7.6'
  sha256 'b5ca3e23d34c83c8d95b21fb623f78e3ae0e3af899dafb3ae8b23c7eb7a3d353'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730/app_versions/8?format=zip&amp;avtoken=a97f42a189ba7f4d7b5d44fc4d5467c2cc31cebc'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730',
          :sha256 => '58db025253fce6f6229fe05aafd369e67e5a7f816d71ec65a9d30e34b32a775b'
  name 'Mailbox'
  homepage 'https://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'

  zap :delete => [
                  '~/Library/Caches/com.dropbox.mailbox/',
                  '~/Library/Containers/com.dropbox.mailbox/'
                 ]
end
