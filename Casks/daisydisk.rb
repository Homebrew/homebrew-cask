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
    version '4.3.2'
    sha256 '567003fe0601e6f377a6936ccd05d0ad0b735cca3db1d8829736db6ea70fd13d'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.12',
            checkpoint: '3b603392d55867319843d82ab85b90ec169375eb77d3c9e0649aa465df2b7ed0'
  end

  name 'DaisyDisk'
  homepage 'https://daisydiskapp.com/'

  app 'DaisyDisk.app'

  postflight do
    suppress_move_to_applications
  end
end
