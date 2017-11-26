cask 'overdrive-media-console' do
  version '1.2'
  sha256 '6e04ac61337647aa86c67d04d62552a0c0a31a3104bf4856aa726e8317272be9'

  url 'https://app.overdrive.com/downloads/ODMediaConsoleSetup.dmg'
  name 'OverDrive Media Console'
  homepage 'https://www.overdrive.com/'

  pkg "OverDrive-Mac-Installer-Version-#{version}.pkg", allow_untrusted: true

  uninstall pkgutil: 'com.overdrive.overdriveMediaConsole.*'

  zap trash: [
               '~/Library/Preferences/com.overdrive.overdrivemediaconsole.plist',
               '~/Library/Caches/com.overdrive.overdrivemediaconsole',
             ]
end
