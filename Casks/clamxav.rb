cask 'clamxav' do
  if MacOS.release <= :tiger
    version '2.2.1'
    sha256 'e075b21fe5154f31dcbde86e492531c87c67ab44ad75294d3063f32ae1e58278'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  elsif MacOS.release <= :leopard
    version '2.5.1'
    sha256 '02a7529c74d11724e2d0e8226ac83a0d3cfb599afb354d02f6609632d69d9eb1'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  else
    version '2.9.1_2384'
    sha256 '33b9dc94a890c0a044712d0189da13327fd611e35611294f1ce944edb060b709'
    url "https://www.clamxav.com/downloads/ClamXav_#{version}.zip"
    appcast 'https://www.clamxav.com/sparkle/appcast.xml',
            checkpoint: '7e751137b5d1512db833edc4c2c41f55adfbbba41c169e1502b81dc4ebd7d0aa'
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
