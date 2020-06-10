cask 'clickup' do
  version '2.0.8'
  sha256 '79bda23295db0e9c66fc7a72dc3a1226a8620384feaeacba6539bb4ed7eb092e'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
