cask 'clamxav' do
  if MacOS.release <= :tiger
    version '2.2.1'
    sha256 'e075b21fe5154f31dcbde86e492531c87c67ab44ad75294d3063f32ae1e58278'
  elsif MacOS.release <= :leopard
    version '2.5.1'
    sha256 '02a7529c74d11724e2d0e8226ac83a0d3cfb599afb354d02f6609632d69d9eb1'
  else
    version '2.8.8'
    sha256 'd9a460ecf762cacf8ae3ef93d04ce1b223fd1ea2c54327b7bc231e8fbd516cd3'

    appcast 'https://www.clamxav.com/sparkle/appcast.xml',
            :sha256 => 'e68625af3cc82a17dc19f7e378b74b0e15d61dc9b16ace1cb5f0bdc308d27389'
  end

  url "https://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  name 'ClamXav'
  homepage 'https://www.clamxav.com/'
  license :commercial

  app 'ClamXav.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
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
