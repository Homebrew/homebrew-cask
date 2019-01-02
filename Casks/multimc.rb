cask 'multimc' do
  version '0.6.3'
  sha256 '6795a131aad8a5227a5aee7d7d2152f91da68a61c84ad070cd40f11833991c87'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
