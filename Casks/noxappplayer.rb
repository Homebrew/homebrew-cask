cask 'noxappplayer' do
  version '3.0.0.0'
  sha256 'adf67436ef9561598aa3a4d60a1b445b209a3c5ea1b047a2ccd304b68e340890'

  url "http://res06.bignox.com/full/20200315/b101bb5a99074327abab2da0bafd2a74.dmg?filename=Nox_installer_for_mac_intl_#{version}.dmg"
  appcast 'https://www.bignox.com/blog/category/releasenote/'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  app 'NoxAppPlayer.app'
end
