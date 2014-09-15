class Clementine < Cask
  version '1.2.2'
  sha256 '7e3dac7fb184058e69afbf9cf68850debbbacdfbbd3023fbcdce7c159a2eed75'

  url 'https://github.com/clementine-player/Clementine/releases/download/1.2.2/clementine-1.2.2.dmg'
  appcast 'https://clementine-data.appspot.com/sparkle'
  homepage 'http://www.clementine-player.org/'

  app 'clementine.app'
end
