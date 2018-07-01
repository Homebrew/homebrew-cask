cask 'scythebill' do
  version '14.0.1'
  sha256 '4d497d461634b24a37343a51b97a0cfeacbc825e8394df553acc5ee0aa129c02'

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
