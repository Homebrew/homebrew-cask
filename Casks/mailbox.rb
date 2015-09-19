cask :v1 => 'mailbox' do
  version '0.7.5'
  sha256 '7582bf85380684a588c8d62dbe18dc5175465e1b42eced965a31f28132e399e1'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730/app_versions/7?format=zip&amp;avtoken=0f1346a734b5d708f53977987cb9c1ab9d6a4d96'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730',
          :sha256 => '512c7f974f87c46795fa0ea9becf72432ced39ad0f57dccb17d89101422b0351'
  name 'Mailbox'
  homepage 'https://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'

  zap :delete => [
                  '~/Library/Caches/com.dropbox.mailbox/',
                  '~/Library/Containers/com.dropbox.mailbox/'
                 ]
end
