cask 'mailspring' do
  version '1.3.0'
  sha256 '24f2c157cb7cb4b44638044529111cd0b275629873e454d4b9caa42354eef7d8'

  # github.com/Foundry376/Mailspring was verified as official when first introduced to the cask
  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring.zip"
  appcast 'https://github.com/Foundry376/Mailspring/releases.atom'
  name 'Mailspring'
  homepage 'https://getmailspring.com/'

  auto_updates true

  app 'Mailspring.app'
end
