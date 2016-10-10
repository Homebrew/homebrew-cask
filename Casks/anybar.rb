cask 'anybar' do
  version '0.1.4'
  sha256 'b245d3ad2c73a10eeef53647a72b0f31a239ef0005656db7fccabea872bb2bd8'

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast 'https://github.com/tonsky/AnyBar/releases.atom',
          checkpoint: '8c627a51a1453b13b10652e0dda39faefbd3826c62545ad0bdd93f0e8a9e1876'
  name 'AnyBar'
  homepage 'https://github.com/tonsky/AnyBar'

  app 'AnyBar.app'
end
