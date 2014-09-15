class Capsee < Cask
  version '1.2'
  sha256 'e78cdfe435cca259e0111a2b2131ad3be7d5ba6160cf69c8e7cbcc033eac2fc4'

  url 'http://www.threemagination.com/CapSee12.zip'
  homepage 'http://www.threemagination.com/capsee/'

  nested_container 'CapSee12.dmg'
  app 'CapSee.app'
end
