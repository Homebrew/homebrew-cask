cask 'inssider' do
  version '4.2.2'
  sha256 '4fa595ea3598543ed2f6027d18012266a86944622f5d87ea8f90f7b3ed28efd7'

  # metageek.net was verified as official when first introduced to the cask
  url "http://files.metageek.net/downloads/inSSIDer#{version.major}-installer.dmg"
  name 'inSSIDer'
  homepage 'http://www.metageek.com/products/inssider/'

  app 'inSSIDer.app'
end
