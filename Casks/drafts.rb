cask 'drafts' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/downloads.agiletortoise.com was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Drafts.app.zip'
  name 'Drafts'
  homepage 'https://getdrafts.com/mac/beta/'

  app 'Drafts.app'
end
