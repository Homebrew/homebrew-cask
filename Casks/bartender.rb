cask :v1 => 'bartender' do
  version '2.0.207'
  sha256 '0a5cb9c1119cb371d9f3ccd1b29c0ad7802e8535152731b13e9c33a023313e08'

  url "http://macbartender.com/B2/updates/#{version.gsub('.', '-')}/Bartender%202.zip",
      :referer => 'http://www.macbartender.com'
  name 'Bartender'
  appcast 'http://www.macbartender.com/B2/updates/updates.php',
          :sha256 => '4241604566ed5fd406f76c3f09eada5a313274fb3170127c5def5d15e84a42c6'
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
