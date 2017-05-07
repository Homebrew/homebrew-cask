cask 'gzdoom' do
  version '3.0.1'
  sha256 '6955eccc5f65a16147429e5d551c469346e1a0f49348609930920f7fa050704e'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '34b9d86d6657e42e360e7d595e6b706f31968602fee310653e1e819f2574e2a2'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
