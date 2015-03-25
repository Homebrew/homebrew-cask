cask :v1 => 'star-realms' do
  version '2.22'
  sha256 '90d2cb6610a6195a85cb2e1a9bcbbc1da42dce57be9dce5186a4b3f12601529a'

  url 'http://d3dyghjp0ukdwm.cloudfront.net/StarRealms_v2_22.dmg'
  name 'Star Realms'
  homepage 'http://www.starrealms.com/digital-game/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Star Realms.app'
end
