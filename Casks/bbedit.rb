cask 'bbedit' do
  version '11.6.3'
  sha256 'd386fa31418a14bae051096d5e3300ee7baffa54b19aa4bb2aec28879119762d'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'cf424efd4349932d32faece1f392d0078d6dad1159a8965c57c99f50c02730ce'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
