cask 'command-tab-plus' do
  version :latest
  sha256 :no_check

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.sergey-gerasimenko.Command-Tab/Command-Tab.zip'
  name 'Command-Tab Plus'
  homepage 'http://commandtab.noteifyapp.com/'

  app 'Command-Tab Plus.app'

  zap trash: [
               '/Users/Shared/Command-Tab Plus',
               '~/Library/Application Support/Command-Tab Plus',
               '~/Library/Caches/com.sergey-gerasimenko.Command-Tab',
             ]
end
