cask 'daisydisk' do
  if MacOS.release <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php',
            checkpoint: '5f9960cd3d158636268aeae712f959bde3407efc4db59b7615e4ab08938d566a'
  else
    version '4.1.1'
    sha256 'bdd566b7f4223b52942780e0c4ce3714954c8add4ce84a4c4e20831ec62504ed'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.11',
            checkpoint: 'eb9a3380e25550149c02932b0b5d79e17c1417fce90aaca1b0f721987361f7a8'
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
