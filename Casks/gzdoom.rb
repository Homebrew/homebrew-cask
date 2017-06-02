cask 'gzdoom' do
  version '3.1.0'
  sha256 '3d80e7b5b9df8b8df0256dcdeaef2880eb0c02b4993548b5d666c88aa1a80663'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '4c28aeac1b5ca0e3af443b2a1d86d94e3f8c5d0875739dea89acf2536b8e5645'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
