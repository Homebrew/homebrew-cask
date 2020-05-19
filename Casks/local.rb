cask 'local' do
  version '5.4.1,3311'
  sha256 'ae2c5371d261a673f87a36c6f75ef496167e00032b4ee9a4e8b9b01d0721ccea'

  url "https://cdn.localwp.com/releases-stable/#{version.before_comma}+#{version.after_comma}/local-#{version.before_comma}-mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cdn.localwp.com/stable/latest/mac'
  name 'Local'
  homepage 'https://localwp.com/'

  app 'Local.app'

  zap trash: [
               '~/Library/Application Support/Local by Flywheel',
               '~/Library/Logs/local-by-flywheel.log',
               '~/Library/Preferences/com.getflywheel.local.plist',
               '~/Library/Preferences/com.getflywheel.local.helper.plist',
               '~/Library/Saved Application State/com.getflywheel.local.savedState',
             ]
end
