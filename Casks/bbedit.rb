cask 'bbedit' do
  version '12.0.1'
  sha256 'a9ff2a3b21a11c30e6c872f3df8548fb7dfabe4372b1b578cb6d6be089cab891'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '54d0f82c57c8c7c3158f1262295b64df119f9a802c25d45a762231955c5ba629'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
