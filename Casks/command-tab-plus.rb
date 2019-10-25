cask 'command-tab-plus' do
  version '1.98,342:1571924100'
  sha256 '1ff74d1948266d5c0a8ee2b407dc82d396adc0406b2a56bea07c8fc836676b1b'

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
