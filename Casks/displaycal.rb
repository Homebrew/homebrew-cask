cask 'displaycal' do
  version '3.1.5.0'
  sha256 '5a66f19f53810028e95a1edbf0769f354bfd3fd44a00c50b07721c6bd29c44c5'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: '98c76a5ff82cdfdedf6d10e403674e25e11ddbce15045c39ab4fe0a89102d830'
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
