cask 'scythebill' do
  version '14.4.6'
  sha256 '2bbb8daa60991e28689cfd13c235a857607387c9e59e7951286d8aee477d7c45'

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
