cask 'multimc' do
  version '0.6.4'
  sha256 '648e07e1346cd4f7819d941deebf2a0882f6be3f9a441e377291c10f4e50c55e'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
