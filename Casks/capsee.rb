cask 'capsee' do
  version '1.2'
  sha256 'e78cdfe435cca259e0111a2b2131ad3be7d5ba6160cf69c8e7cbcc033eac2fc4'

  url "http://www.threemagination.com/CapSee#{version.no_dots}.zip"
  name 'CapSee'
  homepage 'http://www.threemagination.com/capsee/'

  app 'CapSee.app'
end
