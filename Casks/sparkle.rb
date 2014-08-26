class Sparkle < Cask
  version '1.8.0'
  sha256 '882f2e414d2d8a3e776f9a9888cbfcb744df88f3b061325c2aad3c965af5ac1a'

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'http://sparkle-project.org/files/sparkletestcast.xml'
  homepage 'http://sparkle-project.org/'

  link 'Sparkle Test App.app'
end
