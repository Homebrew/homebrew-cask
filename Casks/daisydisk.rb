cask :v1 => 'daisydisk' do

  if MacOS.version == :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "http://www.daisydiskapp.com/downloads/DaisyDisk_2_1_2.dmg"
  else
    version :latest
    sha256 :no_check
    url 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  end

  appcast 'http://www.daisydiskapp.com/downloads/appcastFeed.php'
  homepage 'http://www.daisydiskapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'DaisyDisk.app'

  depends_on :macos => '>= :snow_leopard'
  postflight do
    suppress_move_to_applications
  end
end
