cask 'flycut' do
  version '1.8'
  sha256 'f7fa218a4fee31208476ff400cd1044f3356bf2200a06e32731572498c7ce42a'

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.app.#{version}.zip"
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'
  license :mit

  app 'Flycut.app'

  zap delete: '~/Library/Preferences/com.generalarcade.flycut.plist'
end
