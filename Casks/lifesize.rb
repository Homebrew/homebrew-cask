cask 'lifesize' do
  version '10.3.3-209'
  sha256 '182b67f1649f5d3be8d844ef78976f8d05225bf8994bd2b2852859d048105be0'

  # cdn.lifesizecloud.com was verified as official when first introduced to the cask
  url "https://cdn.lifesizecloud.com/LifesizeCloud-#{version}-signed.pkg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  auto_updates true

  pkg "LifesizeCloud-#{version}-signed.pkg"

  uninstall pkgutil: 'com.lifesize.Lifesize-Cloud'
end
