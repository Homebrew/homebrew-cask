cask :v1 => 'mailbox' do
  version '0.7.4'
  sha256 '49cb3f0fb7c2dd3cfb776c51a947182617c4ca18db4609cda68742dd2b1995c0'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730/app_versions/6?format=zip&avtoken=77e2571a99a2ccbe2d110f671e0c45c9ae9a5df8'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0de2e5766e01cde1f6c0fd5b9862c730',
          :sha256 => 'dcc85baae0952a9689a0a22df020978590d92a0e7bb65a67c51d43fd7bd9b55a'
  name 'Mailbox'
  homepage 'https://www.mailboxapp.com/'
  license :gratis

  app 'Mailbox (Beta).app'

  zap :delete => [
                  '~/Library/Caches/com.dropbox.mailbox/',
                  '~/Library/Containers/com.dropbox.mailbox/'
                 ]
end
