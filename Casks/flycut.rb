cask 'flycut' do
  version '1.8.1'
  sha256 '9b0bea415d1f86d4c992b3a8a3e283fae2d394e963f040cbaa8ec6fe70487d00'

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.app.#{version}.zip"
  appcast 'https://github.com/TermiT/Flycut/releases.atom',
          checkpoint: '67597c9a346bfb4070c85b61817e7929a9b9734f0fa3761db5838f91534bb3c0'
  name 'Flycut'
  homepage 'https://github.com/TermiT/Flycut'

  app 'Flycut.app'

  zap delete: '~/Library/Preferences/com.generalarcade.flycut.plist'
end
