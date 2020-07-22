cask 'clickup' do
  version '2.0.14'
  sha256 '155a1f2c55a26873a96774e49ec89eb9801b850483db6b1ec5426a4a39e9800b'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
