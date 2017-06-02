cask 'gzdoom' do
  version '3.1.0'
  sha256 '4c28aeac1b5ca0e3af443b2a1d86d94e3f8c5d0875739dea89acf2536b8e5645'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '34b9d86d6657e42e360e7d595e6b706f31968602fee310653e1e819f2574e2a2'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
