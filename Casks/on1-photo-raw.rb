cask 'on1-photo-raw' do
  version '2018'
  sha256 'a1fb8465877bb27c600a8dfeebba62da6e40e70f5ddd56e2b1bdfb6833e46eb5'

  # ononesoft.cachefly.net was verified as official when first introduced to the cask
  url "http://ononesoft.cachefly.net/photoraw#{version}/mac/gm_5757/ON1_Photo_RAW_#{version}.dmg"
  name 'On1 Photo RAW'
  homepage 'https://www.on1.com/products/photo-raw/'

  pkg "ON1 Photo RAW #{version}.pkg"

  uninstall pkgutil: 'com.ononesoftware.pluginsuite1200.premium',
            delete:  "/Applications/ON1 Photo RAW #{version}"
end
