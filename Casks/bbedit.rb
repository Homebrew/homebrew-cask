cask 'bbedit' do
  version '11.6.5'
  sha256 '2b32db1592802aa1b3cddbe7649b005a892eb2a9d5f760d8708f4eaae80fd914'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'adcd1cda2c27210d9d75b1a83706c5b388a50347cdaf2677582572a5c0d151cf'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
