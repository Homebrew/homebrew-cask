cask 'pencil2d' do
  version '0.6.1.1'
  sha256 'bce374e85b2d49641cf3325aeb91f5cdfaaa02c2defc83c95092e1f8c56e4bb9'

  # github.com/pencil2d/pencil was verified as official when first introduced to the cask
  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip"
  appcast 'https://github.com/pencil2d/pencil/releases.atom'
  name 'Pencil2D Animation'
  homepage 'https://www.pencil2d.org/'

  app 'Pencil2D/Pencil2D.app'
end
