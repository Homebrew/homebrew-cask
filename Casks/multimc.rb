cask 'multimc' do
  version '0.6.10'
  sha256 'b04f2ca50103d3c67391d04bc3b72eef2cb6485321afaf396aba2ab2411f2197'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC.app'
end
