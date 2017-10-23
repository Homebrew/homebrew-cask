cask 'kitty' do
  version '0.4.2'
  sha256 '4e80eb11a4492c19ed7dc3e522b8eb82225afcdea5e58dd2558fc8efe634267d'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'a9bf4350b7a14a24077e57db025c4856aa0c3a60866651db048f34d9e5732f28'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
