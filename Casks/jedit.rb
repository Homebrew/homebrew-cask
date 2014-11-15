cask :v1 => 'jedit' do
  version '5.1.0'
  sha256 '29922afea1411631436f5f1154e45ddf8d3f6db53c9e41b832cefe86f8b81446'

  url "https://downloads.sourceforge.net/sourceforge/jedit/jedit#{version}install.dmg"
  homepage 'http://www.jedit.org'
  license :oss

  app 'jEdit.app'
end
