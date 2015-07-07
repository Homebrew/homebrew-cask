cask :v1 => 'jedit' do
  version '5.2.0'
  sha256 '0d5e6b38228b87a023dfb6944e54f2651cca7e75d237c6bc7f93fd95ca662270'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/jedit/jedit#{version}install.dmg"
  name 'jEdit'
  homepage 'http://www.jedit.org'
  license :gpl

  app 'jEdit.app'
end
