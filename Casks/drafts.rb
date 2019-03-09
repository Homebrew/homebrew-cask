cask 'drafts' do
  version '5.8.2'
  sha256 '2ba8246740e40db867eb283e8d8fa09c6663b8ed132f7cec657334dbe17716c1'

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  appcast 'https://getdrafts.com/mac/beta/changelog'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  depends_on macos: '>= :high_sierra'

  app 'Drafts.app'
end
