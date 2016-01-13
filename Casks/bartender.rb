cask 'bartender' do
  version '2.0.7'
  sha256 'e96ee3ab2fe6bca413a16899cd1388e69a58ac00ab87e597138163d0632a1689'

  url "https://macbartender.com/B2/updates/#{version.gsub('.', '-')}/Bartender%20#{version.to_i}.zip",
      :referer => 'http://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/updates.php',
          :sha256 => 'c1af9459cd5465ceaffae9d9cc7fad50d78f0b5307141e55477ef0b73213739f'
  name 'Bartender'
  homepage 'https://www.macbartender.com/'
  license :commercial

  auto_updates true

  app "Bartender #{version.to_i}.app"

  postflight do
    suppress_move_to_applications
  end

  uninstall :login_item => 'Bartender 2'

  zap :delete => [
                   '/Library/ScriptingAdditions/BartenderHelper.osax',
                   '~/Library/Preferences/com.surteesstudios.Bartender.plist',
                   '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                   '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax',
                 ]
end
