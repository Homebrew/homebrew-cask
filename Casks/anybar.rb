cask 'anybar' do
  version '0.1.4'
  sha256 'b245d3ad2c73a10eeef53647a72b0f31a239ef0005656db7fccabea872bb2bd8'

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast 'https://github.com/tonsky/AnyBar/releases.atom'
  name 'AnyBar'
  homepage 'https://github.com/tonsky/AnyBar'

  app 'AnyBar.app'
end
