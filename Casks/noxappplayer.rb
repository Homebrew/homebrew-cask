cask 'noxappplayer' do
  version '3.0.1.0,20200414:e34827a24f3b4c16b3d61a88eda7fc43'
  sha256 '77c35b79a6ee1225f15c806bcbbfbaf35de88a249e21867cd231529da74c8ade'

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=Nox_installer_for_mac_intl_#{version.before_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  app 'NoxAppPlayer.app'
end
