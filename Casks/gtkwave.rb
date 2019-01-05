cask 'gtkwave' do
  version '3.3.98'
  sha256 '933863c4f6e0fa1d1f77efadbfaf24b7ceedee0e1e2dd00fbbd3af1429cbf406'

  # downloads.sourceforge.net/gtkwave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'https://gtkwave.sourceforge.io/'

  app 'gtkwave.app'
end
