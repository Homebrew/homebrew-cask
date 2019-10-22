cask 'clickup' do
  version '1.5.6'
  sha256 '9557e7737a18547fe2fc74c1201fe08bfad51e822bdc1f544e8f67b4131e091a'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
