cask 'freelib' do
  version '5.0.1'
  sha256 'be47c517eab531867ae9337ee9893b4ddbfd4768b0d6ace1b902d97793e44367'

  url "https://downloads.sourceforge.net/freelibdesign/#{version}/freeLib#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freelibdesign/rss',
          checkpoint: 'a43073377c233b0a12191d6ab91935df66ddf93141153662450ad3051b5ffe72'
  name 'FreeLib'
  homepage 'http://freelibdesign.sourceforge.net/'

  app 'freeLib.app'
end
