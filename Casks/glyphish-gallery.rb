cask 'glyphish-gallery' do
  version '2.1'
  sha256 '86edda062a651799517990cc96e7f23f38818ecd3f0194e3ad040de0fa82f2d2'

  url "https://github.com/glyphish/gallery/releases/download/v#{version}/v#{version}.zip"
  appcast 'https://github.com/glyphish/gallery/releases.atom',
          checkpoint: '0c8199610b637fc83e74d6c2fa15b7f57bcfa8539349568dd97a38acc19f8635'
  name 'Glyphish Gallery'
  homepage 'https://github.com/glyphish/gallery'

  app 'Glyphish Gallery.app'
end
