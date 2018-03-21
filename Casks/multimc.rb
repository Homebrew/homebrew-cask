cask 'multimc' do
  version '0.6.1'
  sha256 '4776c57b2473665f71a1e6289f768df3545296c355f6e47434e3c56cecc0a73d'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom',
          checkpoint: '1660252b8319042e3c5c75e650f11563aad6dbd8e4e23adb9d3772cd6ba14c60'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
