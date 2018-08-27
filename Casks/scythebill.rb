cask 'scythebill' do
  version '14.0.2'
  sha256 'bd9a4232932fe5e477e2c0b475798c1c1eeb83ddd95604d00cc22affdef0a540'

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
