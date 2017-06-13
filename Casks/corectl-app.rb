cask 'corectl-app' do
  version '0.2.9'
  sha256 'f7d7c23e2f46f7e3b9d3c9b64eed44010a81458e54b4849f33784011dfc2d342'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: 'a8c59a6b7be6b1dd875acd163e7440dd4d8dbf2d47889efb79a1a93a8a7c161e'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
