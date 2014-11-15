cask :v1 => 'simpletag' do
  version '1.5.8'
  sha256 'dcd183808fa09dd15d7ec9c1050fee7588e59b9bbaa8cd0fd49e337d2ed2028a'

  url "http://downloads.sourceforge.net/sourceforge/simpletag/simpletag-gui-#{version}-osx.zip"
  homepage 'http://sourceforge.net/projects/simpletag/'
  license :oss

  app "simpletag-gui-jface-#{version}/SimpleTAG-GUI.app"
end
