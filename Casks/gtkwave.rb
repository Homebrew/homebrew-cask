cask 'gtkwave' do
  version '3.3.95'
  sha256 '8127f909d58cc114c67ea3a703fa5cf578d5db47874530426935597eedf942b4'

  # downloads.sourceforge.net/gtkwave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'https://gtkwave.sourceforge.io/'

  app 'gtkwave.app'
end
