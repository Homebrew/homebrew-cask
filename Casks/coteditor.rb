cask :v1 => 'coteditor' do
  version '2.0.3'
  sha256 'b656aa0b6526c89d7d52cf12b715cf529f8e5048c7e13720673c3e32318a26d8'

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => '86c24c497701e51df3e0b35e72be5f1cc1d2e3b307a8deb0a188c3443ccd553f'
  name 'CotEditor'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
