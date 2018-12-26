cask 'drafts' do
  version '5.5.1.2'
  sha256 '4dae82d757044210a70ae50d81ec82a3bee80a97797e0659b47706a15c663834'

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  appcast 'https://getdrafts.com/mac/beta/changelog'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  app 'Drafts.app'
end
