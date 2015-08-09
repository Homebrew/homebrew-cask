cask :v1 => 'capsee' do
  version '1.2'
  sha256 'e78cdfe435cca259e0111a2b2131ad3be7d5ba6160cf69c8e7cbcc033eac2fc4'

  url "http://www.threemagination.com/CapSee#{version.delete('.')}.zip"
  name 'CapSee'
  homepage 'http://www.threemagination.com/capsee/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => "CapSee#{version.delete('.')}.dmg"
  app 'CapSee.app'
end
