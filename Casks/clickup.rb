cask 'clickup' do
  version '2.0.12'
  sha256 '81c7becb6c83d8df30b75131d4da9c575af65c42eb75ce4f54bdeffa25e8a02f'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
