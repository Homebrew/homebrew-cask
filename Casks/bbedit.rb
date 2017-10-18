cask 'bbedit' do
  version '12.0'
  sha256 'a9112ffee63779bedfba81fcf3b72f1fd2ea9de0f71f0802a78cb8805425c913'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'e73a94ff46000d43c72fb14ad90a0a891c0d6fa66cac432c9e62887398a24901'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
