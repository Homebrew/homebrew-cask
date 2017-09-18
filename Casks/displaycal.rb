cask 'displaycal' do
  version '3.3.4.0'
  sha256 '0be4018e6d51adbf998ffbff1f4fa14c8dfb09ea466140fc60670c5a6237948f'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: 'fad7680973b066a62715e9a954adb0304a28ac285ac1c47a5b93c8d2a259c97d'
  name 'DisplayCAL'
  homepage 'https://displaycal.net/'

  depends_on formula: 'argyll-cms'

  suite 'DisplayCAL'

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('DisplayCAL').tap(&:mkpath))
  end

  zap delete: [
                '~/Library/Application Support/dispcalGUI',
                '~/Library/Logs/dispcalGUI',
                '~/Library/Preferences/dispcalGUI',
              ]
end
