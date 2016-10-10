cask 'jedit' do
  version '5.3.0'
  sha256 '9ef706449951c8904ed7504294c3d854aaaf73f3fd8059dd8d4803036829f9f7'

  # sourceforge.net/jedit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jedit/jedit#{version}install.dmg"
  appcast 'https://sourceforge.net/projects/jedit/rss',
          checkpoint: '20949f9cfe6cfd10970e57b6f9aebb2ce0e52cf611f443996b28b0c1976c6119'
  name 'jEdit'
  homepage 'http://www.jedit.org'

  app 'jEdit.app'
end
