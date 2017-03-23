cask 'jedit' do
  version '5.4.0'
  sha256 '5bef965e267a13cbac8dae12d4f3b1428298fb769c759cedd9d75be96a82c96a'

  # sourceforge.net/jedit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jedit/jedit#{version}install.dmg"
  appcast 'https://sourceforge.net/projects/jedit/rss',
          checkpoint: '5ef477fd6b9583423dc6fca1816255d1e2c4da3057f8cd88d7783b904dcb8567'
  name 'jEdit'
  homepage 'http://www.jedit.org/'

  app 'jEdit.app'
end
