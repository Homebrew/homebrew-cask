cask 'jbidwatcher' do
  version '2.99pre5'
  sha256 '72357173a462a834795241bd5b55e140e1b5aa0a147a1555a68463468c01aeb6'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  appcast 'https://www.jbidwatcher.com/sparkle/updates.xml',
          checkpoint: '8c77c9c8c3b057dc796441fec033235f659ac91a60362b6701cf16734342c8c2'
  name 'JBidwatcher'
  homepage 'https://www.jbidwatcher.com/'

  app 'JBidwatcher.app'
end
