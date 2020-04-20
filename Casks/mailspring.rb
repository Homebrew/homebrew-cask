cask 'mailspring' do
  version '1.7.5'
  sha256 '198f0ecfefba74603ec2b1fa9d828995b34eb7e4d74f5593023a15fb685f757c'

  # github.com/Foundry376/Mailspring/ was verified as official when first introduced to the cask
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
