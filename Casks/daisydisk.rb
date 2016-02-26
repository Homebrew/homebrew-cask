cask 'daisydisk' do
  if MacOS.release <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php',
            checkpoint: '5f9960cd3d158636268aeae712f959bde3407efc4db59b7615e4ab08938d566a'
  else
    version '4.0.4'
    sha256 'c94c741f4562e990cba735d8cb452c8f543d4c589fc1a434cf030097df344e58'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.11',
            checkpoint: 'bd976e0cab2b9142fdc2a54135100041efacf5d726c5832d399fd1806a7f7b35'
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
