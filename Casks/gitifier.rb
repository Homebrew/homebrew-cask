cask :v1 => 'gitifier' do
  version '1.3'
  sha256 'b199743bdae2305db99d9d3a247f9c8846031d1fbb19201ea81262b25e629d2f'

  url "https://github.com/downloads/jsuder/Gitifier/Gitifier-#{version}.zip"
  appcast 'http://sparkle.psionides.eu/feed/gitifier',
          :sha256 => '5bf8682d28e0a59966f8107efbca6be05b60a32252da7288952b35c3fb4e269b'
  homepage 'http://psionides.github.io/Gitifier/'
  license :oss

  app 'Gitifier.app'
end
