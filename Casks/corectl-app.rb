cask 'corectl-app' do
  version '0.2.7'
  sha256 '700c30151490969053835d56169b24011d2736c985c4d190bbcdf0054faf71f5'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_#{version}.dmg"
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
