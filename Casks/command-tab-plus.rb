cask 'command-tab-plus' do
  version '1.93,328:1561982918'
  sha256 '1055101dde4339a580b4792313275cc36a9ad67bdabfc30c0ae1d1d6c8c9f50e'

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
