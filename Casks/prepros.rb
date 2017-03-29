cask 'prepros' do
  version '6.0.10'
  sha256 'cfbc7062db0eb82080767af6123cc80b24d16089baaa2bc6f8d31e3ba5545243'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '340e8db2f8cde0fd689f92ebbb145699123252d98a0752f67197216a5dd54049'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
