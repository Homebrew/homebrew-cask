cask 'mailspring' do
  version '1.2.2'
  sha256 '97ac5476e26fa698a6dfb3a87b7a1f14742f6f0feef6e5be39fa350eb4cf15ea'

  # github.com/Foundry376/Mailspring was verified as official when first introduced to the cask
  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip"
  appcast 'https://github.com/Foundry376/Mailspring/releases.atom'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'
end
