cask 'blackhole' do
  version '0.2.2'
  sha256 'ad4190e69e7fa2c0e150f31ddb414cc482d248f4ba78ecfd787dca4e3859fed8'

  url "https://github.com/ExistentialAudio/BlackHole/releases/download/v#{version}/BlackHole.v#{version}.pkg"
  name 'BlackHole'
  homepage 'https://github.com/ExistentialAudio/BlackHole'

  pkg "BlackHole.v#{version}.pkg"

  uninstall script: {
                      executable: '/bin/rm',
                      args:       ['-rf', '/Library/Audio/Plug-Ins/HAL/BlackHole.driver'],
                      sudo:       true,
                    }
end
