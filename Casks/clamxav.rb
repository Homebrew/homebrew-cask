cask :v1 => 'clamxav' do
  if MacOS.release <= :tiger
    version '2.2.1'
    sha256 'e075b21fe5154f31dcbde86e492531c87c67ab44ad75294d3063f32ae1e58278'
  elsif MacOS.release <= :leopard
    version '2.5.1'
    sha256 '02a7529c74d11724e2d0e8226ac83a0d3cfb599afb354d02f6609632d69d9eb1'
  else
    version '2.8.2'
    sha256 '324b642a64df29d9fa47758adf559f2812aba7bbb4edeb659fdc51817385a643'

    appcast 'http://www.clamxav.com/sparkle/profileInfo.php',
            :sha256 => '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
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
