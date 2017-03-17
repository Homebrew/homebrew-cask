cask 'clamxav' do
  if MacOS.version <= :tiger
    version '2.2.1'
    sha256 'e075b21fe5154f31dcbde86e492531c87c67ab44ad75294d3063f32ae1e58278'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  elsif MacOS.version <= :leopard
    version '2.5.1'
    sha256 '02a7529c74d11724e2d0e8226ac83a0d3cfb599afb354d02f6609632d69d9eb1'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  else
    version '2.12_3050'
    sha256 '53cfa2d4cfd5dbf03d788ebadbf7e7f460ca0740293b5d233e3bd3e1eb2695aa'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.zip"
    appcast 'https://www.clamxav.com/sparkle/appcast.xml',
            checkpoint: '28bbbfa7b51aab7ab7154335e24d8f660530e7da06e0b511cc7cf26b8112ea79'
  end

  name 'ClamXav'
  homepage 'https://www.clamxav.com/'

  app 'ClamXav.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Caches/uk.co.markallan.clamxav',
                '~/Library/Logs/clamXav-scan.*',
              ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
