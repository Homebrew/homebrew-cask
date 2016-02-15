cask 'daisydisk' do
  if MacOS.release <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php',
            checkpoint: '5f9960cd3d158636268aeae712f959bde3407efc4db59b7615e4ab08938d566a'
  else
    version '4.0.2'
    sha256 '1cc0361f69e1ff547f975545fb15fcbee070291dd04e9cff9ef04d2a2ae1fc76'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.11',
            checkpoint: 'c0a80c4d99d581ff6311247e492c6eceef7cf12e1adb02d56a62593e1ae1e561'
  end

  name 'DaisyDisk'
  homepage 'https://www.daisydiskapp.com'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'DaisyDisk.app'

  postflight do
    suppress_move_to_applications
  end
end
