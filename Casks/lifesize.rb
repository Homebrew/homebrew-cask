cask 'lifesize' do
  version '10.3.6-228'
  sha256 'aa8f2d7d03b69bc4dc82d61ccb5d9906f72223550afa4fd3d5bd57a33e7e1230'

  # cdn.lifesizecloud.com was verified as official when first introduced to the cask
  url "https://cdn.lifesizecloud.com/LifesizeCloud-#{version}-signed.pkg"
  appcast 'https://cdn.lifesizecloud.com/OSX_Clients/Sparkle_Upgrades/LifesizeAppcast.xml',
          checkpoint: '126706cb81da1c6dc55ccda30fc14e8d79e42c210170222e2324f76567e71e40'
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  auto_updates true

  pkg "LifesizeCloud-#{version}-signed.pkg"

  uninstall pkgutil: 'com.lifesize.Lifesize-Cloud'
end
