cask 'jedit' do
  version '5.4.0'
  sha256 '5bef965e267a13cbac8dae12d4f3b1428298fb769c759cedd9d75be96a82c96a'

  # sourceforge.net/jedit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jedit/jedit#{version}install.dmg"
  appcast 'https://sourceforge.net/projects/jedit/rss',
          checkpoint: '20949f9cfe6cfd10970e57b6f9aebb2ce0e52cf611f443996b28b0c1976c6119'
  name 'jEdit'
  homepage 'http://www.jedit.org/'

  app 'jEdit.app'
end
