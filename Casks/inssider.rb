cask 'inssider' do
  version '4.2.4.1'
  sha256 '767f947d6f8e9f7c738c98303c5c5bf29829286470d4da85641c597d87caee10'

  # metageek.net was verified as official when first introduced to the cask
  url "http://files.metageek.net/downloads/inSSIDer#{version.major}-installer.dmg"
  name 'inSSIDer'
  homepage 'https://www.metageek.com/products/inssider/'

  app 'inSSIDer.app'
end
