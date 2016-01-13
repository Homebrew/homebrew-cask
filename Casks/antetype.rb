cask 'antetype' do
  version '1.7.2'
  sha256 '9a40450e01e0efa4b44ab3e7a2abcae8efc88eb615425273f0930ba3230680fc'

  # rink.hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/6ab08fb043a94f51c9109c216e295a50/app_versions/17?format=zip&avtoken=80aaf809156fdbf4f99e6efe71695d9d8f077580'
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ab08fb043a94f51c9109c216e295a50',
          :sha256 => '69b333dfc75c55b6561496621b833cf9277ccda3ef6d4b35a0c6d6d2724ef775'
  name 'Antetype'
  homepage 'http://antetype.com'
  license :commercial

  app 'Antetype.app'
end
