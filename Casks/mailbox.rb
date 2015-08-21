cask :v1 => 'mailbox' do
  version '0.7.2'
  sha256 '4472d761e05b99dc15f0476c7092ad6138bb8de1399c907452cfc5bf08196391'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730/app_versions/4?format=zip&avtoken=b70a5f71b15fc402ec1db83426c0ecd6d2601f6b'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730',
          :sha256 => '0a511ea99347c010c1df7ce45027ba412bedf47bde35de089bc5d13c3ba6c779'
  name 'Mailbox'
  homepage 'https://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'

  zap :delete => [
                  '~/Library/Caches/com.dropbox.mailbox/',
                  '~/Library/Containers/com.dropbox.mailbox/'
                 ]
end
