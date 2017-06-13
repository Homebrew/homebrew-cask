cask 'lifesize' do
  version '10.3.5-224'
  sha256 '9ed0f8f45385dcba95bd61d42a6753a493cd1386150439b38e5109a76fdd99dc'

  # cdn.lifesizecloud.com was verified as official when first introduced to the cask
  url "https://cdn.lifesizecloud.com/LifesizeCloud-#{version}-signed.pkg"
  appcast 'https://cdn.lifesizecloud.com/OSX_Clients/Sparkle_Upgrades/LifesizeAppcast.xml',
          checkpoint: 'f508b0aa56c8d4b0736018cfd3166878122c3df409a02c3b4ce7dab0149ae4b8'
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  auto_updates true

  pkg "LifesizeCloud-#{version}-signed.pkg"

  uninstall pkgutil: 'com.lifesize.Lifesize-Cloud'
end
