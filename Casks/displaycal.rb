cask 'displaycal' do
  version '3.3.1.0'
  sha256 'cd56f7329cc4d8a212176a9ab0521ab4b7b5c31f8b1a94a800b83fbf9a3a779e'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: '2053110dacb1c889398e46f44af59619283c19af1bddddc56894feee7982d628'
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
