cask :v1 => 'jedit' do
  version '5.2pre1'
  sha256 '433dcddaec51c85b809ab0749b4043988a75915f427516a41304a5f1c791ca56'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/jedit/jedit#{version}install.dmg"
  homepage 'http://www.jedit.org'
  license :oss

  app 'jEdit.app'
end
