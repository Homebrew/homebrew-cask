cask :v1 => 'douban-fm' do
  version '1.0'
  sha256 'cbd00a0e035004feabf74181730d6a9ee3840da11ecf0e5e5d53094a26663456'

  url "https://github.com/cyrilis/Douban-FM-Express/releases/download/v#{version}/Douban.FM.app.#{version}.zip"
  appcast 'https://github.com/cyrilis/Douban-FM-Express/releases.atom'
  name 'Douban FM'
  homepage 'https://github.com/cyrilis/Douban-FM-Express'
  license :mit

  app 'Douban FM.app'
end
