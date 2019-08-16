cask 'clickup' do
  version '1.5.2'
  sha256 'ca8f4fc593b2dc5202ac7ff717c3931cbeec03e4410f006908400afbe5ad75d1'

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  name 'ClickUp'
  homepage 'https://clickup.com/'

  app 'ClickUp.app'
end
