cask 'simpletag' do
  version '1.5.10'
  sha256 '32bb973f784e63271467cf28b1a877053a0e9d435d6eed15d3f05ef76c286ab0'

  url "https://downloads.sourceforge.net/simpletag/simpletag-gui-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/simpletag/rss',
          checkpoint: '6705a1adb6c30ea422e1ec32267b58db8122a955971852c63e29f3b2ebb68500'
  name 'SimpleTAG'
  homepage 'https://sourceforge.net/projects/simpletag/'

  app "simpletag-gui-jface-#{version}/SimpleTAG-GUI.app"
end
