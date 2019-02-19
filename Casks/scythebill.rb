cask 'scythebill' do
  version '14.4.0'
  sha256 '2c5ff7e3a001865752996c95349b5cb490c1dffb0c5f379fd6dbbe0b57a34a24'

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
