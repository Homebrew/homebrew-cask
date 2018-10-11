cask 'shortcutdetective' do
  version '1.0'
  sha256 '4b8ef6319baa51369dad48fe03973e1135a96e5b62c0a7c7b55cd2daabe38065'

  url 'https://www.irradiatedsoftware.com/downloads/ShortcutDetective.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/profile.php'
  name 'ShortcutDetective'
  homepage 'https://www.irradiatedsoftware.com/labs/'

  app 'ShortcutDetective.app'

  zap trash: '~/Library/Preferences/com.irradiatedsoftware.ShortcutDetective.plist'
end
