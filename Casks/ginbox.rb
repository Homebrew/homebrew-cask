cask 'ginbox' do
  version '0.2.3c'
  sha256 '15c60b91e2e067dd7ec7134c0ae7f806997bc38076cebda6513d065fbf67aa62'

  url "https://github.com/chenasraf/gInbox/releases/download/#{version}/gInbox-#{version}.zip"
  appcast 'https://github.com/chenasraf/gInbox/releases.atom',
          checkpoint: '3a89225229a6a08abebe28b80cdf78946a22e59d23e4905c454e12ed4b34abee'
  name 'gInbox'
  name 'Inbox by Google'
  homepage 'https://github.com/chenasraf/gInbox'

  depends_on macos: '>= :mavericks'

  app 'Inbox by Google.app'
end
