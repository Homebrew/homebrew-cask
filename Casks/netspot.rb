cask 'netspot' do
  version '2.6.797'
  sha256 '8fd2ae945a379fe198814f5c9cbb5358e29bd78ebff04f3de3ee3077a6cc62cb'

  url 'https://www.netspotapp.com/download/NetSpot.dmg'
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml",
          checkpoint: 'e0b96f66345251e94c6f15a807d51e00e0490be2c7ffa46ea5d75fbb3b61d543'
  name 'NetSpot'
  homepage 'https://www.netspotapp.com/'

  app 'NetSpot.app'
end
