cask 'anybar' do
  version '0.1.4'
  sha256 'b245d3ad2c73a10eeef53647a72b0f31a239ef0005656db7fccabea872bb2bd8'

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast 'https://github.com/tonsky/AnyBar/releases.atom',
          checkpoint: '8542cd0d1d343e2b5d69fd3219475b3db2c3cf81afff3fcc77199b2eabe86b8b'
  name 'AnyBar'
  homepage 'https://github.com/tonsky/AnyBar'

  app 'AnyBar.app'
end
