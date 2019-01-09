cask 'freelib' do
  version '5.0.1'
  sha256 'be47c517eab531867ae9337ee9893b4ddbfd4768b0d6ace1b902d97793e44367'

  # downloads.sourceforge.net/freelibdesign was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freelibdesign/#{version}/freeLib#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freelibdesign/rss'
  name 'FreeLib'
  homepage 'https://freelibdesign.sourceforge.io/'

  app 'freeLib.app'
end
