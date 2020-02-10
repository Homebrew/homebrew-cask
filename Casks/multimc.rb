cask 'multimc' do
  version '0.6.8'
  sha256 'a015d9c9b93d15fa1ff9c9363a64bcbd3681e7bcce4de04d813baf2c484bfb7c'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC.app'
end
