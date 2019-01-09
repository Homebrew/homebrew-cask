cask 'glyphish-gallery' do
  version '2.1'
  sha256 '86edda062a651799517990cc96e7f23f38818ecd3f0194e3ad040de0fa82f2d2'

  url "https://github.com/glyphish/gallery/releases/download/v#{version}/v#{version}.zip"
  appcast 'https://github.com/glyphish/gallery/releases.atom'
  name 'Glyphish Gallery'
  homepage 'https://github.com/glyphish/gallery'

  app 'Glyphish Gallery.app'
end
