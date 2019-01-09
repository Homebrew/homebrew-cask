cask 'pencil2d' do
  version '0.6.2'
  sha256 '5661d6cbaadfc4542ce584966ae5075d44fbf00dd430b9d854210db9b9cf3fff'

  # github.com/pencil2d/pencil was verified as official when first introduced to the cask
  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip"
  appcast 'https://github.com/pencil2d/pencil/releases.atom'
  name 'Pencil2D Animation'
  homepage 'https://www.pencil2d.org/'

  app 'Pencil2D/Pencil2D.app'
end
