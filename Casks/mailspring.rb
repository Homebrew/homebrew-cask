cask 'mailspring' do
  version '1.4.2'
  sha256 'ffdc14f82a50c168213809bbab1508de6ffabcca14105ff33e3b773d23ff0d76'

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
