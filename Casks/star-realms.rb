cask :v1 => 'star-realms' do
  version '2.22'
  sha256 '90d2cb6610a6195a85cb2e1a9bcbbc1da42dce57be9dce5186a4b3f12601529a'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d3dyghjp0ukdwm.cloudfront.net/StarRealms_v#{version.gsub('.','_')}.dmg"
  name 'Star Realms'
  homepage 'http://www.starrealms.com/digital-game/'
  license :freemium

  app 'Star Realms.app'
end
