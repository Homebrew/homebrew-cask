cask 'flycut' do
  version '1.8.2'
  sha256 '70e40de3fed82035bd16979bc4d99fda3588888720694fe6cd4e7f367a9004ba'

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.app.#{version}.zip"
  appcast 'https://github.com/TermiT/Flycut/releases.atom'
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'

  app 'Flycut.app'

  zap trash: '~/Library/Preferences/com.generalarcade.flycut.plist'
end
