cask 'bbedit' do
  version '11.6.6'
  sha256 '3ab848da98c59b708601fd78e3fa2f350104e1a6b8cfbcb8f161689e8d521f12'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'fe15345679b9c17343ab57f77508f1584dbf2a962c125b61dfeb643fd1bcca8c'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
