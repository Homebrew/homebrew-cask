cask 'supermjograph' do
  version '0.15.2'
  sha256 '750b22a53fe88c07ef468eb0eb531ce18b1cf0fc0473fda411ba24f07bd92c83'

  # sourceforge.net/projects/mjograph was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/mjograph/files/latest/download'
  appcast 'https://sourceforge.net/projects/mjograph/files/SuperMjograph'
  name 'Super Mjograph'
  homepage 'https://www.mjograph.net/'

  app 'SuperMjograph.app'
end
