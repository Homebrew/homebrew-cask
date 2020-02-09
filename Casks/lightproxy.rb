cask 'lightproxy' do
  version '1.1.8'
  sha256 '287cfc258692bf89acb450111b0c7f1ac63ccc66f82f9b13982cf6a1d29cd27c'

  # gw.alipayobjects.com/os/LightProxy was verified as official when first introduced to the cask
  url 'https://gw.alipayobjects.com/os/LightProxy/7372dabd-cb4e-43e5-98a2-e7f22785dc76/LightProxy.dmg'
  name 'LightProxy'
  homepage 'https://github.com/alibaba/lightproxy/'

  app 'LightProxy.app'
end
