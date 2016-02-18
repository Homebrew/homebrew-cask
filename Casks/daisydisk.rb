cask 'daisydisk' do
  if MacOS.release <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php',
            checkpoint: '5f9960cd3d158636268aeae712f959bde3407efc4db59b7615e4ab08938d566a'
  else
    version '4.0.3'
    sha256 'e856927eeadd74a254e3a4ff535cb40aa9eaf58d6812cd39a0137be9bb4fea55'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.11',
            checkpoint: '9ac3f3c8d274d32539aeacb76bdc8cf3a690263886e6fd85eefb5ee9b86fbcab'
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
