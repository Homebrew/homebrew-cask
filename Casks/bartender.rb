cask :v1 => 'bartender' do
  version :latest
  sha256 :no_check

  url 'http://www.macbartender.com/Demo/Bartender.zip'
  appcast 'http://www.macbartender.com/updates/updates.php'
  homepage 'http://www.macbartender.com/'
  license :commercial

  app 'Bartender.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.surteesstudios.Bartender.plist'
end
