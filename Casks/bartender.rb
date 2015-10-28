cask :v1 => 'bartender' do
  version '2.0.5'
  sha256 '7a114172ca5c3dfdc38f9d056b7d208d471e814c8c1dae5f0408bea2e71eadc9'

  url "http://macbartender.com/B2/updates/#{version.gsub('.', '-')}/Bartender%202.zip",
      :referer => 'http://www.macbartender.com'
  name 'Bartender'
  appcast 'http://www.macbartender.com/B2/updates/updates.php',
          :sha256 => '0b62d11944fefe4cb3ccdca722c8faedd205de5a01f0159ed967f0bda651943a'
  homepage 'http://www.macbartender.com/'
  license :commercial

  app 'Bartender 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '/Library/ScriptingAdditions/BartenderHelper.osax',
                  '~/Library/Preferences/com.surteesstudios.Bartender.plist',
                  '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                  '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax'
                 ]
end
