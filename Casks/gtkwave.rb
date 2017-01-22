cask 'gtkwave' do
  version '3.3.79'
  sha256 'dcdc3e9d356c00c356183cee07269734e8763098bb4958c5a355b1583cecd7e5'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '5dd3eb7b6d85f1d4ef2bb86e20dc61c3f2ae60422608cd5683de5088d524b15c'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net'

  app 'gtkwave.app'
end
