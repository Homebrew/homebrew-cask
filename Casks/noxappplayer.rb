cask 'noxappplayer' do
  version '3.0.2.1,20200506:1b8bb41aef4442e2b5fb376a8f846080'
  sha256 '41a4696ecf3199691124704173c33456498a437fdf3c80403084863bf7273b8a'

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=Nox_installer_for_mac_intl_#{version.before_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  container nested: 'NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip'

  app 'NoxAppPlayer.app'
end
