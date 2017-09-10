cask 'gtkwave' do
  version '3.3.84'
  sha256 'c503fb140f94a433dcfdc6417110890c77938b97f4d32cd4640155585d738b7c'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '32f014bffe849d4bc2a975e662ecb6a38ce83507dd39f03ebc874252d551bc33'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
