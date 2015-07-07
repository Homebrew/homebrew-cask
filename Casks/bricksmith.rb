cask :v1 => 'bricksmith' do
  version '3.0'
  sha256 'bf7dcd7508d2d6e37f6079080e8ae51095e14d05eb507ad85ac4bbaf5b9ae7c5'

  url "http://downloads.sourceforge.net/sourceforge/bricksmith/bricksmith/Bricksmith%20#{version}/BricksmithComplete#{version}.zip"
  name 'Bricksmith'
  appcast 'http://bricksmith.sourceforge.net/files/bricksmith_appcast.xml',
          :sha256 => '75f5c572a0db8373093ba2308c423086f6fc50069a79808b40c4f3d496ab256f'
  homepage 'http://bricksmith.sourceforge.net/'
  license :bsd

  app 'Bricksmith/Bricksmith.app'
end
