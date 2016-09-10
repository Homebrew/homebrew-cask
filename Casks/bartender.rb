cask 'bartender' do
  version '2.1.5'
  sha256 '130234472a32ca4ec4df61da9b17c1083fec3197cdf1c6f885d4b55112818021'

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/updates.php',
          checkpoint: '19d1b5bfc28d61f68e7fcdb9b101d452e392ce4791d101935e4354637f37ba73'
  name 'Bartender'
  homepage 'https://www.macbartender.com/'
  license :commercial

  auto_updates true

  app "Bartender #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Bartender 2'

  zap delete: [
                '/Library/ScriptingAdditions/BartenderHelper.osax',
                '~/Library/Preferences/com.surteesstudios.Bartender.plist',
                '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax',
              ]
end
