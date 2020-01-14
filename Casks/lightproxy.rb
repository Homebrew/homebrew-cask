cask 'lightproxy' do
  version '1.1.7'
  sha256 'dad8d44ee3b092f046a767676d0131df8d70ab930b5620237dbbe8c7ff102d8f'

  # gw.alipayobjects.com/os/LightProxy was verified as official when first introduced to the cask
  url 'https://gw.alipayobjects.com/os/LightProxy/LightProxy.dmg'
  appcast 'https://github.com/alibaba/lightproxy/tree/develop/CHANGELOG'
  name 'LightProxy'
  homepage 'https://alibaba.github.io/lightproxy/'

  app 'LightProxy.app'
end
