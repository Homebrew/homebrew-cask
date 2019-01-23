cask 'drafts' do
  version '5.6.2.2'
  sha256 'f269acba9e5b0ebfce4b0750034fe4972490e76cdba55c3e9255e679ce6cd2c9'

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  appcast 'https://getdrafts.com/mac/beta/changelog'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  depends_on macos: '>= :high_sierra'

  app 'Drafts.app'
end
