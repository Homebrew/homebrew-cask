cask 'clickup' do
  version '2.0.3'
  sha256 '78a2c4c1666c038c9a9db91c85f287bdc5fc806a20ce3d7c1c39c585cc93409c'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
