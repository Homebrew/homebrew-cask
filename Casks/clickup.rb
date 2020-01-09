cask 'clickup' do
  version '2.0.5'
  sha256 '2486ad9094da1ecc7ebe8884990fccb232cba280b7aac263331ac351219e8aff'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
