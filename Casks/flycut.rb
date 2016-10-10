cask 'flycut' do
  version '1.8'
  sha256 'f7fa218a4fee31208476ff400cd1044f3356bf2200a06e32731572498c7ce42a'

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.app.#{version}.zip"
  appcast 'https://github.com/TermiT/Flycut/releases.atom',
          checkpoint: '02bb24f0420441a85701adebe5e145497146bd9c4923b321df6974042cbbffa4'
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'

  app 'Flycut.app'

  zap delete: '~/Library/Preferences/com.generalarcade.flycut.plist'
end
