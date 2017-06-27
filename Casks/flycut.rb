cask 'flycut' do
  version '1.8.2'
  sha256 '70e40de3fed82035bd16979bc4d99fda3588888720694fe6cd4e7f367a9004ba'

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.app.#{version}.zip"
  appcast 'https://github.com/TermiT/Flycut/releases.atom',
          checkpoint: 'c978b2178af3240b1d123542b6aece9228dd4ef0c6a8e96a652fae7fc78edb45'
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'

  app 'Flycut.app'

  zap trash: '~/Library/Preferences/com.generalarcade.flycut.plist'
end
