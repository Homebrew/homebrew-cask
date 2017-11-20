cask 'kitty' do
  version '0.5.0'
  sha256 'e9acfffc615713bc456c3e2c343de12877c4e437deb12ad4c6f6348b5f798858'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '5fd4fcf782fcf970da87fafa4e964a9a5042ee94f2c8fefe45ccf2f15e3602ca'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
