cask 'command-tab-plus' do
  version '1.92,324:1553250170'
  sha256 'f5ea01fa03217ef432f0c8cc307c94aa05992f433b89a1b839f0f6919768a5c9'

  # dl.devmate.com/com.sergey-gerasimenko.Command-Tab was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.Command-Tab/#{version.after_comma.before_colon}/#{version.after_colon}/Command-Tab-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.Command-Tab.xml'
  name 'Command-Tab Plus'
  homepage 'http://commandtab.noteifyapp.com/'

  app 'Command-Tab Plus.app'

  zap trash: [
               '/Users/Shared/Command-Tab Plus',
               '~/Library/Application Support/Command-Tab Plus',
               '~/Library/Caches/com.sergey-gerasimenko.Command-Tab',
             ]
end
