cask 'inssider' do
  version '4.2.2'
  sha256 '4fa595ea3598543ed2f6027d18012266a86944622f5d87ea8f90f7b3ed28efd7'

  # metageek.net is the official download host per the vendor homepage
  url "http://files.metageek.net/downloads/inSSIDer#{version.major}-installer.dmg"
  appcast 'http://www.metageek.com/misc/versions/MacSSIDer/MacSSIDer_appcast.xml',
          :sha256 => 'a299640d6804984bb4089a0428bb9e798a24c17658158b75a262f629e68dea3f'
  name 'inSSIDer'
  homepage 'http://www.inssider.com/'
  license :commercial

  app 'inSSIDer.app'
end
