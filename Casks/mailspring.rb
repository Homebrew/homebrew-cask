cask 'mailspring' do
  version '1.5.4'
  sha256 'a66e55e8f2d99906edefc2a9d77f196701c71e0345d905921605a162bb8bc078'

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
