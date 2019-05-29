cask 'mockoon' do
  version '1.4.0'
  sha256 '5c4ea6cbf0085d4e55dc095828ef5e0366504570474ff0ee7bd03924a4b710e5'

  # github.com/mockoon/mockoon was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
