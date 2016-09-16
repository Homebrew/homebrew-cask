cask 'corectl-app' do
  version '0.2.7'
  sha256 '700c30151490969053835d56169b24011d2736c985c4d190bbcdf0054faf71f5'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: '67cc2c56f133796719da4a2c1e9a7fc102826bdcc6b9209f03746187281fd08f'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'
  license :oss

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
