cask 'displaycal' do
  version '3.1.1.0'
  sha256 '7cae3f96378833875bdbd3e010c379616c9750494a871c5a117dcde0a619d02d'

  # sourceforge.net/projects/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  name 'DisplayCAL'
  homepage 'https://displaycal.net'
  license :gpl

  depends_on formula: 'argyll-cms'

  # There is no sub-folder in the DMG; the root *is* the folder
  suite '.', target: 'DisplayCAL'

  zap delete: [
                '~/Library/Application Support/dispcalGUI',
                '~/Library/Logs/dispcalGUI',
                '~/Library/Preferences/dispcalGUI',
              ]
end
