cask 'drafts' do
  version '5.7.2'
  sha256 'fd8ee1c6953445901d62583eca102000f805f8a51c584656975563383781acbe'

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  appcast 'https://getdrafts.com/mac/beta/changelog'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  depends_on macos: '>= :high_sierra'

  app 'Drafts.app'
end
