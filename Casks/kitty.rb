cask 'kitty' do
  version '0.8.1'
  sha256 '2e4b4003bb524de5bc45a7bcc628ff93ecfc9ba983f41f417c3e3ecc3ccb13f1'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'd7e3c6b8bec9416313ebf46dc9f41af035e0ac479135f094a747e4101f1c8879'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
