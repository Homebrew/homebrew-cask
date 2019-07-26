cask 'bbedit' do
  if MacOS.version <= :el_capitan
    version '12.1.6'
    sha256 '23b9fc6ef5c03cbcab041566503c556d5baf56b2ec18f551e6f0e9e6b48dc690'
  else
    version '12.6.5'
    sha256 '7f2818764c55797b76dabbb0b778ba8b5e3dd804a2e91c7d807f51f83d1a67b2'
  end
  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'BBEdit.app'

  zap trash: [
               '~/Library/Application Support/BBEdit',
               '~/Library/Preferences/com.barebones.bbedit.plist',
               '~/Library/BBEdit',
               '~/Library/Caches/com.barebones.bbedit',
             ]
end
