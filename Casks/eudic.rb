cask 'eudic' do
  version '3.9.2,2019-10-08'
  sha256 '8b50efeb0648681a2b38dbd511eca4146586282cfc1bf10b1a14736ddfa3ade3'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/v4/en/app/eudic'

  app 'Eudic.app'
end
