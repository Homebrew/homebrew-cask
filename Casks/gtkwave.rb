cask 'gtkwave' do
  version '3.3.86'
  sha256 'feee8e20efe4048f8a4ac6e77948b95ac59b860ec6fe4aac560da566864f1f87'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: 'd51fe0e06f25569c0d9fbabb5c89374da0dcd77f8c7a092ae47164f5ac2fd093'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
