cask :v1 => 'coteditor' do
  version '2.0.0'
  sha256 '70377acae52d5599d5adf7e0a56d0b3c7d5b82697a7fe3469da41b3fea2ae85c'

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => '86c24c497701e51df3e0b35e72be5f1cc1d2e3b307a8deb0a188c3443ccd553f'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
