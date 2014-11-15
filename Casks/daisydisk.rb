cask :v1 => 'daisydisk' do
  version :latest
  sha256 :no_check

  url 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  appcast 'http://www.daisydiskapp.com/downloads/appcastFeed.php'
  homepage 'http://www.daisydiskapp.com'
  license :unknown

  app 'DaisyDisk.app'

  postflight do
    suppress_move_to_applications
  end
end
