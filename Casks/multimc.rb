cask 'multimc' do
  version '0.6.5'
  sha256 'a33588176c1dd4e680d36f0dbb3fff4c71ebdccc2bf7b1c235e087fe14c3bad2'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
