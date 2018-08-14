cask 'gtkwave' do
  version '3.3.92'
  sha256 '78989e3be530d97a3404fccb0bb243ad602962e3b59753b9fa19cbb8a7325d54'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
