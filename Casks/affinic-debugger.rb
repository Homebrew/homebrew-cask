cask 'affinic-debugger' do
  version '2.0.1'
  sha256 '52a8cd20e0c73d6334336ff7d5e00d8223ad46bb96c44267e535df6dc51481b6'

  url "http://www.affinic.com/download/adg_#{version}/adg_macosx.dmg"
  appcast 'http://www.affinic.com/download/adg_macosx.xml',
          checkpoint: '0da3ee6631d5e2c31403c42e4b9ecc2433dbbb7d69e1d2d92b63cdbf864b11ea'
  name 'Affinic Debugger'
  homepage 'http://www.affinic.com/?page_id=109'

  app 'Affinic Debugger.app'

  zap trash: [
               '~/Library/Preferences/com.adg-setting.plist',
               '~/Library/Saved Application State/com.affinic.adg.savedState',
             ]
end
