cask 'bartender' do
  version '2.1.6'
  sha256 '013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5'

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast "https://www.macbartender.com/B#{version.major}/updates/updates.php",
          checkpoint: '6d5406613e77584527da5dfcc997d13f6b2985ae81ec732f399216743fe00a16'
  name 'Bartender'
  homepage 'https://www.macbartender.com/'

  auto_updates true

  app "Bartender #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: "Bartender #{version.major}"

  zap delete: [
                '/Library/ScriptingAdditions/BartenderHelper.osax',
                '~/Library/Preferences/com.surteesstudios.Bartender.plist',
                '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax',
              ]
end
