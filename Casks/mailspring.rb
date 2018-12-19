cask 'mailspring' do
  version '1.5.3'
  sha256 'c57d5be8cdb8a721bb24c5cd65bc7cbb6da96f356ea9f428bd8fffae94159089'

  # github.com/Foundry376/Mailspring was verified as official when first introduced to the cask
  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip"
  appcast 'https://github.com/Foundry376/Mailspring/releases.atom'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'

  zap trash: [
               '~/Library/Application Support/Mailspring',
               '~/Library/Preferences/com.mailspring.*',
               '~/Library/Caches/com.mailspring.*',
               '~/Library/Saved Application State/com.mailspring.*',
               '~/Library/Logs/Mailspring',
             ]
end
