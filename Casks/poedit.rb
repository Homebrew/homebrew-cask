cask :v1 => 'poedit' do
  version '1.6.10'
  sha256 'd6b6d07a10099c3a31ee21622764ed6d3d007a437dab33a00b0f15e42b2dfa76'

  url "http://poedit.net/dl/Poedit-#{version}.zip"
  appcast 'http://releases.poedit.net/appcast-osx',
          :sha256 => 'bbaf42f8a2e9754df8a60dfcef724cc6d326d6fd4cc05426c45e3a44e8f0d3dd'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
