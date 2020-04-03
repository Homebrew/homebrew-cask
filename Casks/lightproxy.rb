cask 'lightproxy' do
  version '1.1.11'
  sha256 '6c8be69236e3b9f4ba64370666fd30287e84cd7e67911908580aa13af2c0e8e3'

  # gw.alipayobjects.com/os/LightProxy was verified as official when first introduced to the cask
  url 'https://gw.alipayobjects.com/os/LightProxy/LightProxy.dmg'
  appcast 'https://github.com/alibaba/lightproxy/tree/develop/CHANGELOG'
  name 'LightProxy'
  homepage 'https://alibaba.github.io/lightproxy/'

  app 'LightProxy.app'
end
