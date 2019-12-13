cask 'command-tab-plus' do
  version '1.104,354:1576154336'
  sha256 'c7d9dd9d9806d32c5d707d1ef5f43bd7e3f65956b41fe593a10278e07ae92084'

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
