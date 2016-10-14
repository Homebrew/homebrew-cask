cask 'corectl-app' do
  version '0.2.8'
  sha256 '3571c6fff8eb4e4787b15d2024845e517cb19384f9b6899cbd45161a0d4ffbee'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: '1c589521e0a74974e828d2fe3f527345c7459eaeaaa8dd744f9eb6f728125109'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
