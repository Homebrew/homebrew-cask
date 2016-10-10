cask 'displaycal' do
  version '3.1.7.0'
  sha256 '0c5f4252563d9bb411b17ec663905fb9b9b2349cf45f373f1ce745bdb350b020'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: '10f7fca2eaaa03dd2c057937be3832dd8c4af22c7d03cd3698a9d9e2719ad971'
  name 'DisplayCAL'
  homepage 'https://displaycal.net'

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
