cask 'bbedit' do
  if MacOS.version <= :el_capitan
    version '12.1.6'
    sha256 '23b9fc6ef5c03cbcab041566503c556d5baf56b2ec18f551e6f0e9e6b48dc690'
  elsif MacOS.version <= :sierra
    version '12.6.7'
    sha256 'd0647c864268b187343bd95bfcf490d6a2388579b1f8fce64a289c65341b1144'
  elsif MacOS.version <= :high_sierra
    version '12.6.7'
    sha256 'd0647c864268b187343bd95bfcf490d6a2388579b1f8fce64a289c65341b1144'
  else
    version '13.0'
    sha256 '38126aa393fd6cafdc91903bbca50d0555f06f7c0f08161c6ab110206ecaada3'
  end
  # Version 13.0 requires macOS 10.14.2. elsif for Sierra and High Sierra to download last compatible versions.
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
