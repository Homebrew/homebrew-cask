cask 'freelib' do
  version '5.0.1'
  sha256 'be47c517eab531867ae9337ee9893b4ddbfd4768b0d6ace1b902d97793e44367'

  url "https://downloads.sourceforge.net/freelibdesign/#{version}/freeLib#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freelibdesign/rss',
          checkpoint: 'abd0f80a5e7116102db928960a6eb500f84c555187d873300f375b81886137a7'
  name 'FreeLib'
  homepage 'http://freelibdesign.sourceforge.net/'

  app 'freeLib.app'
end
