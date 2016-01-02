cask 'multimc' do
  version :latest
  sha256 :no_check

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  name 'Multi MC'
  homepage 'https://multimc.org/'
  license :bsd

  app 'MultiMC/MultiMC.app'
end
