cask 'inssider' do
  version '4.2.2'
  sha256 '4fa595ea3598543ed2f6027d18012266a86944622f5d87ea8f90f7b3ed28efd7'

  # metageek.net is the official download host per the vendor homepage
  url "http://files.metageek.net/downloads/inSSIDer#{version.major}-installer.dmg"
  appcast 'http://www.metageek.com/misc/versions/MacSSIDer/MacSSIDer_appcast.xml',
          :sha256 => '0f428f51658210944724edf5daedb6003735a59ad701bfd09477c1249f471cfb'
  name 'inSSIDer'
  homepage 'http://www.inssider.com/'
  license :commercial

  app 'inSSIDer.app'
end
