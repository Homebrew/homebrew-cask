cask 'simpletag' do
  version '1.5.10'
  sha256 '32bb973f784e63271467cf28b1a877053a0e9d435d6eed15d3f05ef76c286ab0'

  url "https://downloads.sourceforge.net/simpletag/simpletag-gui-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/simpletag/rss',
          checkpoint: '7ce71edc7aec04c948ba801d49132b164d164c7d4c9dc019275ae8ad2b254288'
  name 'SimpleTAG'
  homepage 'https://sourceforge.net/projects/simpletag/'

  app "simpletag-gui-jface-#{version}/SimpleTAG-GUI.app"
end
