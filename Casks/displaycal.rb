cask 'displaycal' do
  version '3.3.4.1'
  sha256 '4f2bd73325f9b32d11318b2c588c26e479342f311617dea88a49311b0ab3c37c'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: 'e5e8e56969e1a0693a97a0b85be2945cd12d853938ae8149fd334b2a0c20a836'
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
