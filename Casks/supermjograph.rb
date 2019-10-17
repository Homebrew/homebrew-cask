cask 'supermjograph' do
  version :latest
  sha256 :no_check

  # sourceforge.net/projects/mjograph was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/mjograph/files/latest/download'
  name 'Super Mjograph'
  homepage 'https://www.mjograph.net/'

  app 'SuperMjograph.app'
end
