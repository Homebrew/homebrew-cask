cask 'noxappplayer' do
  version '3.0.2.0,20200422:02062aa2192b4490aa121f60ba82cf3b'
  sha256 'cc401e478c833ad16a4adfbbde30b40a705be6ce6cf1ec4ff9062ceb2d9a0078'

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=Nox_installer_for_mac_intl_#{version.before_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  container nested: 'NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip'

  app 'NoxAppPlayer.app'
end
