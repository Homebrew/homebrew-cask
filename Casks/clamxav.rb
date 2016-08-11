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
    version '2.9.2_2478'
    sha256 'af09fce4a929a3c90897865ffe52bd09070d5eefd802f4926603950ce108d158'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.zip"
    appcast 'https://www.clamxav.com/sparkle/appcast.xml',
            checkpoint: 'b703c3328bc6c965817f5c27fa186156b8b537221529b666b5927eaccd2fa3f8'
  end

  name 'ClamXav'
  homepage 'https://www.clamxav.com/'
  license :commercial

  app 'ClamXav.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Caches/uk.co.markallan.clamxav',
                '~/Library/Logs/clamXav-scan.log',
                # TODO: glob/expand needed here
                '~/Library/Logs/clamXav-scan.log.0.bz2',
              ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
