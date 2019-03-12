cask 'drafts' do
  version '5.8.6'
  sha256 '20a6bcf06ffe89dec89625a40f83de904697f6e3e25710e872ee182c0480422a'

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  appcast 'https://getdrafts.com/mac/beta/changelog'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  depends_on macos: '>= :high_sierra'

  app 'Drafts.app'
end
