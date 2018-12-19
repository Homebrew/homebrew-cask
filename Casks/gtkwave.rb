cask 'gtkwave' do
  version '3.3.97'
  sha256 '154000345d45427b9def7e858968af685510ab05c11e26f6523666affc513db4'

  # downloads.sourceforge.net/gtkwave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'https://gtkwave.sourceforge.io/'

  app 'gtkwave.app'
end
