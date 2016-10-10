cask 'macbreakz' do
  version '5.26'
  sha256 'b40f25f56cd4968d15affebe74e25c5d600d04a5723d9d03ef59ec72431903a1'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: 'dc30f7b8390c401431ecc54eb91ab7e06e0be9976a84bac1267dfbeb2547b48b'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'

  app "MacBreakZ #{version.major}.app"
end
