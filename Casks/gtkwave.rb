cask 'gtkwave' do
  version '3.3.89'
  sha256 '27d244dd428d38c3d8e5aa498f84745516238491367929e09624cc95a3ee9f1c'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '552d25109b8786bb7c3d1216e5798b89ca740ebdf43cb48e60c51ef3a1609e66'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
