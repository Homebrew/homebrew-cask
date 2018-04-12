cask 'jedit' do
  version '5.5.0'
  sha256 '2573720e6b36dca2105d3b16bc2245b3d1dadcd7e84d40f2c41c3c285386d122'

  # sourceforge.net/jedit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jedit/jedit#{version}install.dmg"
  appcast 'https://sourceforge.net/projects/jedit/rss',
          checkpoint: 'c701cc0e0af7cddf29beaea544309fe356c3fd134a17bfb7b2f42f05604316ac'
  name 'jEdit'
  homepage 'http://www.jedit.org/'

  app 'jEdit.app'
end
