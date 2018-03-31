cask 'kitty' do
  version '0.8.2'
  sha256 'b0fa3e4967822781891fa7cd1d9f2edaecd8b7c296fef35a8c60c38448ecbcc5'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '5367d74595e105c890d91d3afb76258a4d63dd5a1f587fd5bf861533a7abf01e'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
