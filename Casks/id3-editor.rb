cask :v1 => 'id3-editor' do
  version '1.21.25'
  sha256 '9d11840530236e9f746f8d050ef3c2b5690e5b48283e711af16cb5ff08914131'

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  homepage 'http://www.pa-software.com/id3editor/'
  license :unknown    # todo: improve this machine-generated value

  app 'ID3 Editor.app'
end
