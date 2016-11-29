cask 'simpletag' do
  version '1.5.8'
  sha256 'dcd183808fa09dd15d7ec9c1050fee7588e59b9bbaa8cd0fd49e337d2ed2028a'

  url "https://downloads.sourceforge.net/simpletag/simpletag-gui-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/simpletag/rss',
          checkpoint: '7ce71edc7aec04c948ba801d49132b164d164c7d4c9dc019275ae8ad2b254288'
  name 'SimpleTAG'
  homepage 'https://sourceforge.net/projects/simpletag/'

  app "simpletag-gui-jface-#{version}/SimpleTAG-GUI.app"
end
