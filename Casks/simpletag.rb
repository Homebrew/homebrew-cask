cask 'simpletag' do
  version '1.5.8'
  sha256 'dcd183808fa09dd15d7ec9c1050fee7588e59b9bbaa8cd0fd49e337d2ed2028a'

  url "https://downloads.sourceforge.net/simpletag/simpletag-gui-#{version}-osx.zip"
  name 'SimpleTAG'
  homepage 'http://sourceforge.net/projects/simpletag/'
  license :gpl

  app "simpletag-gui-jface-#{version}/SimpleTAG-GUI.app"
end
