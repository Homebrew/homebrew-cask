cask 'douban-fm' do
  version '1.0'
  sha256 'cbd00a0e035004feabf74181730d6a9ee3840da11ecf0e5e5d53094a26663456'

  url "https://github.com/cyrilis/Douban-FM-Express/releases/download/v#{version}/Douban.FM.app.#{version}.zip"
  appcast 'https://github.com/cyrilis/Douban-FM-Express/releases.atom',
          checkpoint: '08e4664256c13f6458d2e6db82033d9cee1584084f4a01eab91b89022cd50ac3'
  name 'Douban FM'
  homepage 'https://github.com/cyrilis/Douban-FM-Express'

  app 'Douban FM.app'
end
