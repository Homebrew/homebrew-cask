cask 'scythebill' do
  version '13.8.1'
  sha256 '0dbdf09020c6ae6cecb46f24edd1c496a4de45b647338702656ec82ce0ce9626'

  # storage.googleapis.com/scythebill-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/scythebill-releases/Scythebill-#{version}.dmg"
  appcast 'http://www.scythebill.com/download.html',
          checkpoint: '36f0492a5549f5d17715f2039a310710d92176ca08af3348dbe8641a0090245f'
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
