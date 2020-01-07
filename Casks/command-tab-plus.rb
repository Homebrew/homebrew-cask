cask 'command-tab-plus' do
  version '1.109'
  sha256 '608458aa55d699f6c1d21a6bc834365d0787174b4f34b266dad8f267acfdc328'

  # macplus-software.com/downloads was verified as official when first introduced to the cask
  url 'https://macplus-software.com/downloads/Command-Tab%20Plus.zip'
  appcast 'https://macplus-software.com/downloads/Command-Tab.xml'
  name 'Command-Tab Plus'
  homepage 'http://commandtab.noteifyapp.com/'

  app 'Command-Tab Plus.app'

  zap trash: [
               '/Users/Shared/Command-Tab Plus',
               '~/Library/Application Support/Command-Tab Plus',
               '~/Library/Caches/com.sergey-gerasimenko.Command-Tab',
             ]
end
