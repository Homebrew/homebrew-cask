cask 'corectl-app' do
  version '0.2.6'
  sha256 '15485c6e898df6c8c2cf56562179b41906d8f1a71822f4190f97055569d8bf9d'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: '5538fe31af10ad0467017f143f95c74fca7a3ea176a11bccdc6c50aec04a6120'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'
  license :oss

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
