cask 'gtkwave' do
  version '3.3.79'
  sha256 'dcdc3e9d356c00c356183cee07269734e8763098bb4958c5a355b1583cecd7e5'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: 'a3dd4c83ff15a8349abd0f9e1d5ef2cb500b2da1cfc4ff7ca80a64090dcd9bdc'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
