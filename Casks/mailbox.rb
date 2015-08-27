cask :v1 => 'mailbox' do
  version '0.7.3'
  sha256 '9c2e83983a4034c1eafb16c10802b68c0979124a5843fb6470695806e68bf02f'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730/app_versions/5?format=zip&avtoken=44ed8a6ca2e22c96feb72d8cd89f638e64628811'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730',
          :sha256 => 'e4899665be89ccf97261f8d8a70f0401259ce171b36180db0858c99e30e5a273'
  name 'Mailbox'
  homepage 'https://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'

  zap :delete => [
                  '~/Library/Caches/com.dropbox.mailbox/',
                  '~/Library/Containers/com.dropbox.mailbox/'
                 ]
end
