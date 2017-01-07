cask 'gzdoom' do
  version '2.3.0'
  sha256 '39ca6342037551dec17c89b8428a9f76b96c6b278c0da49434df7a42b0d4f79b'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '0f15bb0072e6975877555a68d63ab811fab48778216ea7d23b3189de54cce9ce'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
