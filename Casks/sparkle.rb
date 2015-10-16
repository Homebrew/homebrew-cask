cask :v1 => 'sparkle' do
  version '1.11.0'
  sha256 'd7b5130ddbb5f7c4334dc55c4d6784a831ffa5cbdcbc09975f4ddcc27d7f19f8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
