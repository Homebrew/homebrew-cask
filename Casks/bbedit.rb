cask 'bbedit' do
  if MacOS.version <= :high_sierra
    version '12.6.7'
    sha256 'd0647c864268b187343bd95bfcf490d6a2388579b1f8fce64a289c65341b1144'
  else
    version '13.0'
    sha256 '38126aa393fd6cafdc91903bbca50d0555f06f7c0f08161c6ab110206ecaada3'
  end
  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'BBEdit.app'

  zap trash: [
               '~/Library/Application Support/BBEdit',
               '~/Library/Preferences/com.barebones.bbedit.plist',
               '~/Library/BBEdit',
               '~/Library/Caches/com.barebones.bbedit',
             ]
end
