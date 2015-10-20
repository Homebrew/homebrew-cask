cask :v1 => 'clamxav' do
  if MacOS.release <= :tiger
    version '2.2.1'
    sha256 'e075b21fe5154f31dcbde86e492531c87c67ab44ad75294d3063f32ae1e58278'
  elsif MacOS.release <= :leopard
    version '2.5.1'
    sha256 '02a7529c74d11724e2d0e8226ac83a0d3cfb599afb354d02f6609632d69d9eb1'
  else
    version '2.8.5'
    sha256 'd058eb5d27201ba7706c7daa9d8fe9f50597c0ce4fd4174555b60f91d097b955'

    appcast 'http://www.clamxav.com/sparkle/profileInfo.php',
            :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
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
                  # todo glob/expand needed here
                  '~/Library/Logs/clamXav-scan.log.0.bz2',
                 ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
