cask 'bbedit' do
  version '12.0.2'
  sha256 '9a1d18e5b722380591d175edf7bfdbea0ec65aba4384e61e3b135442ed498d91'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'd03731ff7e8f3917eebaad9ca15d8ca7a92e99396dd37c0c3c9c24cb3704f7d0'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
