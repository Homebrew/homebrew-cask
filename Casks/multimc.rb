cask 'multimc' do
  version '0.6.6'
  sha256 '34ff64ea13cbd7c25b626482237f65dd84262f1f1c5016ac87cddc78578bfa72'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
