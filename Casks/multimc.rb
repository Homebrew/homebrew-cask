cask 'multimc' do
  version '0.6.7'
  sha256 '56b912bcbac9c91dc9651963b8575837718a2b4f239897b399ff6afdb552b301'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
