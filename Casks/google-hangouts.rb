class GoogleHangouts < Cask
  url 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg'
  homepage 'https://www.google.com/tools/dlpage/hangoutplugin'
  version 'latest'
  no_checksum
  install 'Google Voice and Video.pkg'
  uninstall :script => '/usr/bin/open',
            :args => %w[/Library/Application\ Support/Google/GoogleVoiceAndVideoUninstaller.app/Contents/MacOS/GoogleVoiceAndVideoUninstaller]
end
