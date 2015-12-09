cask :v1 => 'bartender' do
  version '2.0.7'
  sha256 'e96ee3ab2fe6bca413a16899cd1388e69a58ac00ab87e597138163d0632a1689'

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
