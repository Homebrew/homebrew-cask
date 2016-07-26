cask 'displaycal' do
  version '3.1.4.0'
  sha256 '273f0d07f9d0c19e869490aca7ba9e2c4533fb2f892cc6b71b7d6ba59d98b8ea'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: '9da5419808c591b64d223751825993b83d7bcde26c03996bbaa0ff035b3f9496'
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
