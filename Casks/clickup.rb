cask 'clickup' do
  version '1.5.5'
  sha256 '1714120a8eacbe20436e478b44a6fc698d633922a0f13616806cc13b1232fc46'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
