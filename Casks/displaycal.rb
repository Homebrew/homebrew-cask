cask 'displaycal' do
  version '3.1.3.1'
  sha256 'fa28c1c7d7ed6f4ea183cf7b367fd35d78ecd921b2750b48d8c23e00933b8126'

  # sourceforge.net/projects/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: '26d5d205b22c6467ba2ed4852ed5ccb3d799a48fc59188177d29cc8bb504d9f6'
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
