cask 'mailspring' do
  version '1.6.2'
  sha256 'a9b138865653cc39d02f2402d80378bb6f49175b4abaa0d49b21f5c79d519b77'

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
