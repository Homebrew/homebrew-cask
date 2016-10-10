cask 'inssider' do
  version '4.2.2'
  sha256 '4fa595ea3598543ed2f6027d18012266a86944622f5d87ea8f90f7b3ed28efd7'

  # metageek.net was verified as official when first introduced to the cask
  url "http://files.metageek.net/downloads/inSSIDer#{version.major}-installer.dmg"
  appcast 'http://www.metageek.com/misc/versions/MacSSIDer/MacSSIDer_appcast.xml',
          checkpoint: 'fd7b7d1cff572bf9567cb87524e4db3e6c01115d52ab70ceca9523d04bb17c26'
  name 'inSSIDer'
  homepage 'http://www.inssider.com/'

  app 'inSSIDer.app'
end
