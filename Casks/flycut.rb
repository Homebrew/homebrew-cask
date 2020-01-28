cask 'flycut' do
  version '1.9.3'
  sha256 'b74e0918869d1356d0e950ea0951d0ec8fa10b44e1a6a6b953f52c071b4310e1'

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.#{version}.zip"
  appcast 'https://github.com/TermiT/Flycut/releases.atom'
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'

  app 'Flycut.app'

  zap trash: '~/Library/Preferences/com.generalarcade.flycut.plist'
end
