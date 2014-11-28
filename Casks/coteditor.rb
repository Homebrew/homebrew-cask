cask :v1 => 'coteditor' do
  version '2.0.2'
  sha256 '92a497d867eddab4fd9d8f23c57879f028c72771c60882f141760cea24aab674'

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => '86c24c497701e51df3e0b35e72be5f1cc1d2e3b307a8deb0a188c3443ccd553f'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
