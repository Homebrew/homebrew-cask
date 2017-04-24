cask 'slic3r' do
  version '1.2.9'
  sha256 '2e8579791192332bb2ee6dce860d78edd4bb010ff06d0d7692dedee641a1bc1c'

  url "http://dl.slic3r.org/mac/slic3r-osx-uni-#{version.dots_to_hyphens}-stable.dmg"
  appcast 'http://dl.slic3r.org/mac/',
          checkpoint: '9a3b799cd9e4f8a92b5c05be96f026417667139b0dbc809e94e3cd4a9b4a71a0'
  name 'Slic3r'
  homepage 'http://slic3r.org/'

  app 'Slic3r.app'
end
