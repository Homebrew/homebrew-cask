cask 'bricksmith' do
  version '3.0'
  sha256 'bf7dcd7508d2d6e37f6079080e8ae51095e14d05eb507ad85ac4bbaf5b9ae7c5'

  url "http://downloads.sourceforge.net/sourceforge/bricksmith/bricksmith/Bricksmith%20#{version}/BricksmithComplete#{version}.zip"
  appcast 'http://bricksmith.sourceforge.net/files/bricksmith_appcast.xml',
          checkpoint: '6e0946bf3dca4270977ed6eb67c33e7ccc2322703535c45ef972c7ac7cb692c0'
  name 'Bricksmith'
  homepage 'http://bricksmith.sourceforge.net/'
  license :bsd

  app 'Bricksmith/Bricksmith.app'
end
