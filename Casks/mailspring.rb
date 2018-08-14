cask 'mailspring' do
  version '1.4.1'
  sha256 '011c2372e64fcc3258865f911a06382fd23b72baec9447e49f7615671d790798'

  # github.com/Foundry376/Mailspring was verified as official when first introduced to the cask
  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip"
  appcast 'https://github.com/Foundry376/Mailspring/releases.atom'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'
end
