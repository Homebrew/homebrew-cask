cask 'gtkwave' do
  version '3.3.91'
  sha256 '1a36d50d3c6bafd708bea4a6af721cf961d22ebddaf37c3924fbf620a0642da7'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: 'f2d615550875cdb18355a70e9811b08709ddabe6ad5a1cbbaa6602d133a95859'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
