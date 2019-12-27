cask 'eudic' do
  version '3.9.4,2019-11-27'
  sha256 '669f646ab6fe532aaea5fa6af97e2e1ea3a0ee4acdafeff5c6809120cb565b48'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/v4/en/app/eudic'

  app 'Eudic.app'
end
