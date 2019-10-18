cask 'supermjograph' do
<<<<<<< HEAD
  version '0.15.2'
  sha256 '750b22a53fe88c07ef468eb0eb531ce18b1cf0fc0473fda411ba24f07bd92c83'

  # sourceforge.net/projects/mjograph was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/mjograph/files/latest/download'
  appcast 'https://sourceforge.net/projects/mjograph/files/SuperMjograph'
=======
  version :latest
  sha256 :no_check

  # sourceforge.net/projects/mjograph was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/mjograph/files/latest/download'
>>>>>>> a066ef6d13250b2403d3050f62eb3af8417357c0
  name 'Super Mjograph'
  homepage 'https://www.mjograph.net/'

  app 'SuperMjograph.app'
end
