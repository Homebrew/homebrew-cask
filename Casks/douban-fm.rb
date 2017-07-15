cask 'douban-fm' do
  version '1.0'
  sha256 'cbd00a0e035004feabf74181730d6a9ee3840da11ecf0e5e5d53094a26663456'

  url "https://github.com/cyrilis/Douban-FM-Express/releases/download/v#{version}/Douban.FM.app.#{version}.zip"
  appcast 'https://github.com/cyrilis/Douban-FM-Express/releases.atom',
          checkpoint: 'eda4d9c2b2a7db8b670bd8c9a02b2a9d4d455dc33cf6b6b4118c334b9e0457f2'
  name 'Douban FM'
  homepage 'https://github.com/cyrilis/Douban-FM-Express'

  app 'Douban FM.app'
end
