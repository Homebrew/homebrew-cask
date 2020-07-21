cask 'clickup' do
  version '2.0.13'
  sha256 '3dd9ba58ac48bc8f27cd79f1ce271e724947f030baf5597a4014eb38dcb1bd7c'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
