cask 'drafts' do
  version '5.7.6'
  sha256 '7b0fb9c2668a074e17fc819223022348113ea5d0a0078d6903628f1e45c3a44d'

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  appcast 'https://getdrafts.com/mac/beta/changelog'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  depends_on macos: '>= :high_sierra'

  app 'Drafts.app'
end
