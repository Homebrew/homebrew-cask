cask 'clickup' do
  version '2.0.11'
  sha256 'c71edac3c19323d688e3fe75a6e2e0b8c6bd58bebd9bdb45631d06d03e340992'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
