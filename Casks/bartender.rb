cask 'bartender' do
  version '2.0.7'
  sha256 'e96ee3ab2fe6bca413a16899cd1388e69a58ac00ab87e597138163d0632a1689'

  url "https://macbartender.com/B2/updates/#{version.gsub('.', '-')}/Bartender%20#{version.to_i}.zip",
      :referer => 'http://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/updates.php',
          :sha256 => 'c5d7d68b33e5c378262b384031ceb19400ed4b7878c1f04029e516c42a90f9a7'
  name 'Bartender'
  homepage 'https://www.macbartender.com/'
  license :commercial

  app "Bartender #{version.to_i}.app"

  postflight do
    suppress_move_to_applications
  end

  uninstall :login_item => 'Bartender 2'

  zap :delete => [
                  '/Library/ScriptingAdditions/BartenderHelper.osax',
                  '~/Library/Preferences/com.surteesstudios.Bartender.plist',
                  '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                  '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax'
                 ]
end
