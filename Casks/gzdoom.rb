cask 'gzdoom' do
  version '3.1.0'
  sha256 '3d80e7b5b9df8b8df0256dcdeaef2880eb0c02b4993548b5d666c88aa1a80663'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '34b9d86d6657e42e360e7d595e6b706f31968602fee310653e1e819f2574e2a2'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
