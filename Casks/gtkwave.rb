cask 'gtkwave' do
  version '3.3.96'
  sha256 'a74998b974c552939f69f4221a11fbdb74e1595dc87ed76aa1a11e0816e24d6f'

  # downloads.sourceforge.net/gtkwave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'https://gtkwave.sourceforge.io/'

  app 'gtkwave.app'
end
