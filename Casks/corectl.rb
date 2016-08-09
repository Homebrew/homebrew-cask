cask 'corectl' do
  version '0.2.4'
  sha256 '61237d48623bef604d75edadcbdb94b4a9d2de01424e597dd78dd37a5e64180e'

  url "https://github.com/TheNewNormal/corectl.app/releases/download/v#{version}/corectl_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/corectl.app/releases.atom',
          checkpoint: '06f80721b07d112df09e89bf5ef1e4ecd4cb1d351d1d5ac9a36565078af4f294'
  name 'Corectl'
  homepage 'https://github.com/TheNewNormal/corectl.app'
  license :oss

  app 'corectl.app'
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectl"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/corectld"
  binary "#{appdir}/corectl.app/Contents/Resources/bin/qcow-tool"
end
