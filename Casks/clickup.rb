cask 'clickup' do
  version '2.0.1'
  sha256 'e83a8683a88269690bec7c42fb355890b42b0a99b71bfc1dec404a368bc7439b'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
