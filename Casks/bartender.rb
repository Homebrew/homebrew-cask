cask :v1 => 'bartender' do
  version '2.0.3'
  sha256 'd8c1b46b620d62f58ee5401424996a3bfeb8e1797600e9e495509b50dbb3fdd1'

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
