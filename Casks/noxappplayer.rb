cask 'noxappplayer' do
  version '3.0.3.0,20200601:c0071155ad77455b9dd01aca5d1b05d2'
  sha256 '0afb106be9140b3899cf039a07b31f5e707d2245db42405cfc6e31f7b4a0630b'

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=Nox_installer_for_mac_intl_#{version.before_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  container nested: 'NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip'

  app 'NoxAppPlayer.app'
end
