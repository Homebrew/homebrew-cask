cask 'noxappplayer' do
  version '2.0.0.0,0117'
  sha256 'adf67436ef9561598aa3a4d60a1b445b209a3c5ea1b047a2ccd304b68e340890'

  url "https://res06.bignox.com/full/2020#{version.after_comma}/7fc81e345aff4ac394d6c188c67e4cf1.dmg?filename=Nox_installer_for_mac_v#{version.before_comma}_en_#{version.after_comma}.dmg"
  appcast 'https://www.bignox.com/blog/category/releasenote/'
  name 'NoxAppPlayer'
  homepage 'https://www.bignox.com/'

  app 'NoxAppPlayer.app'
end
