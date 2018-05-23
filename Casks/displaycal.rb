cask 'displaycal' do
  version '3.5.3.0'
  sha256 '1828b5dea240570bd759484917c2c52e5b96ca87c841669859b18a4cb7caa7db'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: '92e1b9b6d5a749357d9e050e5fe7cc0ac3c5a17f0b23295a2a08493802ef8775'
  name 'DisplayCAL'
  homepage 'https://displaycal.net/'

  depends_on formula: 'argyll-cms'

  suite 'DisplayCAL'

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('DisplayCAL').tap(&:mkpath))
  end

  zap trash: [
               '~/Library/Application Support/dispcalGUI',
               '~/Library/Logs/dispcalGUI',
               '~/Library/Preferences/dispcalGUI',
             ]
end
