cask 'gzdoom' do
  version '2.3.2'
  sha256 'b1db121cf75c1a6f9d56b30c66ed7e61681f7358cc101fb37ed0eba7beaca27b'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: 'a2b1a64ae7baad8671873448933e9cf7eafed7d0a62e4b96dd4371e21f709035'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
