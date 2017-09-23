cask 'gtkwave' do
  version '3.3.85'
  sha256 'a553e6d463b466a00a63842bf4a06bf0c0546e73539f3c023c1f1961729cd7b3'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '32f014bffe849d4bc2a975e662ecb6a38ce83507dd39f03ebc874252d551bc33'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
