cask 'clickup' do
  version '2.0.4'
  sha256 'c9b3a4773c07a38ab9e4bd87e3355dbb01a2be01df1cdf417caaaa1650a38ff7'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
