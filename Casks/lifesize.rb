cask 'lifesize' do
  version '10.3.6-229'
  sha256 'e33c7ebca28735fee44a11e5f7251bf5a1bc0d8fabff610eab956cb3e56e357c'

  # cdn.lifesizecloud.com was verified as official when first introduced to the cask
  url "https://cdn.lifesizecloud.com/LifesizeCloud-#{version}-signed.pkg"
  appcast 'https://cdn.lifesizecloud.com/OSX_Clients/Sparkle_Upgrades/LifesizeAppcast.xml',
          checkpoint: 'c2483ecac9f8e27beb660acb55ec9162c7d70894dbab3b5b1873e12b07625de7'
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  auto_updates true

  pkg "LifesizeCloud-#{version}-signed.pkg"

  uninstall pkgutil: 'com.lifesize.Lifesize-Cloud'
end
