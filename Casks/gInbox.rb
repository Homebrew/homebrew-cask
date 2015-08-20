cask :v1 => 'gInbox' do
  version '0.2.3c'
  sha256 '15c60b91e2e067dd7ec7134c0ae7f806997bc38076cebda6513d065fbf67aa62'

  url 'https://github.com/chenasraf/gInbox/releases/download/0.2.3c/gInbox-0.2.3c.zip'
  name 'Inbox by Google'
  homepage 'https://github.com/chenasraf/gInbox'
  license :apache

  app 'Inbox by Google.app'
end
