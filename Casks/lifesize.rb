cask 'lifesize' do
  version '10.3.2-181'
  sha256 '5661cc5e78efad1b1c3c5a4b3d3635e2c2514e2ba87335362c83677cbd3e12ee'

  # cdn.lifesizecloud.com was verified as official when first introduced to the cask
  url "https://cdn.lifesizecloud.com/LifesizeCloud-#{version}-signed.pkg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  auto_updates true

  pkg "LifesizeCloud-#{version}-signed.pkg"

  uninstall pkgutil: 'com.lifesize.Lifesize-Cloud'
end
