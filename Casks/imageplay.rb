cask 'imageplay' do
  version '6.1.0'
  sha256 'b85bdff21dd8a569d84f3dcf25b2201b5c784ef06b8a5db8a6390897e2d7ed9d'

  # github.com/cpvrlab/ImagePlay was verified as official when first introduced to the cask
  url "https://github.com/cpvrlab/ImagePlay/releases/download/#{version}/ImagePlay-#{version}.dmg"
  appcast 'https://github.com/cpvrlab/ImagePlay/releases.atom',
          checkpoint: 'df31de5607628dbc9cd4f6d842a6d3d077d30db480f8148212e7bab5c499a8c3'
  name 'ImagePlay'
  homepage 'https://imageplay.io/'

  app 'ImagePlay.app'
end
