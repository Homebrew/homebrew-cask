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
    sha256 'abb487c8b2c4e10b73d4a88b289f947a0b9f044862e077a304c230dadd9fc699'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.zip"
    appcast 'https://www.clamxav.com/sparkle/appcast.xml',
            checkpoint: 'c0bed429b19e3c7d088a0c118521f7d37a2dadf6eabedcd9f8205e41c8a320be'
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
