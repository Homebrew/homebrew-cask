cask 'muruslogsvisualizer' do
  version '1.4.2'
  sha256 'c36fc392a741588b9e270d45f0a791cf869473d5842e2d799d32a25b1a3a64e9'

  url "https://www.murusfirewall.com/downloads/muruslogsvisualizer-#{version}.zip"
  name 'Murus Logs Visualizer'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'MurusLogsVisualizer.app'

  uninstall login_item: 'MurusLogsVisualizer',
            quit:       'it.murus.MurusLogsVisualizer'

  zap trash: '~/Library/Preferences/it.murus.MurusLogsVisualizer.plist'
end
