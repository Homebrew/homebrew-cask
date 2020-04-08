cask 'noxappplayer' do
  version '3.0.0.0,20200315:b101bb5a99074327abab2da0bafd2a74'
  sha256 'adf67436ef9561598aa3a4d60a1b445b209a3c5ea1b047a2ccd304b68e340890'

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=Nox_installer_for_mac_intl_#{version.before_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.bignox.com/en/download/fullPackage/mac_fullzip'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  app 'NoxAppPlayer.app'
end
