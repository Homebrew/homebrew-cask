cask 'daisydisk' do
  if MacOS.version <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version.dots_to_underscores}.dmg"
  elsif MacOS.version <= :mavericks
    version '3.0.3.1'
    sha256 'fe2aa86f2ea8a1f0c4791857a5b7991ecad295b5b969849bb7b15a890ab54b86'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version.dots_to_underscores}.zip"
  else
    version '4.3'
    sha256 'e455b7776fdfc5cfd77ca8a77fa31dc8cfb285d5942b304c1a63b59df978060e'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.12',
            checkpoint: '841f773b1583ed95d406571ce7252af48213fea262e136102f9836dcc17fdfda'
  end

  name 'DaisyDisk'
  homepage 'https://www.daisydiskapp.com'

  depends_on macos: '>= :snow_leopard'

  app 'DaisyDisk.app'

  postflight do
    suppress_move_to_applications
  end
end
