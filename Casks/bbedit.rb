cask 'bbedit' do
  version '12.0.2'
  sha256 '9a1d18e5b722380591d175edf7bfdbea0ec65aba4384e61e3b135442ed498d91'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '6f47f2a80842d0dcd158d11fbea25ca06992eb134367e5888a60396963a16bea'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
