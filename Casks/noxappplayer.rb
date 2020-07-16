cask 'noxappplayer' do
  version '3.0.5.0,20200715:531d774287dc4ddfad58275245ceec8d'
  sha256 '74f762b95a0fef3f0a27778eb847dc3346748abca021f3f55bc8c192a6571401'

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=Nox_installer_for_mac_intl_#{version.before_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  container nested: 'NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip'

  app 'NoxAppPlayer.app'
end
