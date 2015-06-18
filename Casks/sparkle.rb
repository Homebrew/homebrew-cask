cask :v1 => 'sparkle' do
  version '1.8.0'
  sha256 '882f2e414d2d8a3e776f9a9888cbfcb744df88f3b061325c2aad3c965af5ac1a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
