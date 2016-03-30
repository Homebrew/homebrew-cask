cask 'daisydisk' do
  if MacOS.release <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php',
            checkpoint: '5f9960cd3d158636268aeae712f959bde3407efc4db59b7615e4ab08938d566a'
  else
    version '4.2'
    sha256 'e60b9643d33fc0f10da0446f101b1ffb196c668f313ffeaf24ff5589a6cb2978'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.11',
            checkpoint: '77bc6653426f83e97b0a42944095f70e855c0f9136f3c769bc4c3576a297d316'
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
