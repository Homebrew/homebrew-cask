cask 'corectl-app' do
  version '0.2.9'
  sha256 'f7d7c23e2f46f7e3b9d3c9b64eed44010a81458e54b4849f33784011dfc2d342'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: '24c14f190606f3c23da30e780b7c7e827226bee0fe37b26320af14f75a2f1f57'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
