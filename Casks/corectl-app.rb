cask 'corectl-app' do
  version '0.2.9'
  sha256 'f7d7c23e2f46f7e3b9d3c9b64eed44010a81458e54b4849f33784011dfc2d342'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: 'b00a4524703f6497244e91b895bc71f54f626afeea90c1426c39b988eb807526'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
