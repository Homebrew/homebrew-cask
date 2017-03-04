cask 'bbedit' do
  version '11.6.4'
  sha256 'c97b6a1804c051a28ef8a476518df608a6ee75e98a043d0284f53f818ca08989'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '867891de38a744b4c898ac0acf4b078b3062e18119a0c716b45e8b5b4cf8fe24'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
