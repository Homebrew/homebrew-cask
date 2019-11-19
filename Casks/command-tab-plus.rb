cask 'command-tab-plus' do
  version '1.102,352:1573130584'
  sha256 'd32ad31b3c8210b74582551026f7c7bee67741a18c0db7c94110ee0acde6bbfd'

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
