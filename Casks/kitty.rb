cask 'kitty' do
  version '0.3.0'
  sha256 '1d5159d0467df5145e87e7db886436f0ddf3951738a21dc94f034a3b1dff02aa'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'a74676f200df44ace2e2d72c3c6761317ce676b512de5928e8d378a9933a9698'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
