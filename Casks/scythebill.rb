cask 'scythebill' do
  version '14.5.0'
  sha256 '15b9af9f9d8d581968a7c1cc910b174c24e4ee508d5feefafda8ee24a3ba4ae1'

  # storage.googleapis.com/scythebill-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/scythebill-releases/Scythebill-#{version}.dmg"
  appcast 'https://www.scythebill.com/download.html'
  name 'Scythebill'
  homepage 'https://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
