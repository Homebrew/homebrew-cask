cask :v1 => 'starrealms' do
  version '2.31'
  sha256 '2d64a2b7a44d4a4f21ae5356a65eec76006f9186c9581e19a02a026683951137'

  url "http://downloads.starrealms.com/StarRealms-v#{version.gsub('.','')}.dmg"
  name 'Star Realms'
  homepage 'http://www.starrealms.com/digital-game/'
  license :freemium

  app 'StarRealms.app'
end
