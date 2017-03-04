cask 'displaycal' do
  version '3.2.4.0'
  sha256 'a0d31130473637422fef0c4c2f56de43439f5dd820e879fad5bfa97385f352cf'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release',
          checkpoint: 'd5b7860c827fe9f1d2187148610cfd32927d46710d8d14498212a134c91e6902'
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
