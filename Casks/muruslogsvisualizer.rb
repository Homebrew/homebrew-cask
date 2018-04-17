cask 'muruslogsvisualizer' do
  version '1.4.3'
  sha256 '43d7219580b8e3afd9a0dce3b258e66b19aa759bee023b2bc8b33266a8cd4c20'

  url "https://www.murusfirewall.com/downloads/muruslogsvisualizer-#{version}.zip"
  name 'Murus Logs Visualizer'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'MurusLogsVisualizer.app'

  uninstall login_item: 'MurusLogsVisualizer',
            quit:       'it.murus.MurusLogsVisualizer'

  zap trash: '~/Library/Preferences/it.murus.MurusLogsVisualizer.plist'
end
