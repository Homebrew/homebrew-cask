cask 'synalyze-it-pro' do
  version '1.14'
  sha256 '25899c87a55d39d728ec945bce60fae4cf55e28092dc028010d2a3987ea5bb3f'

  # s3-us-west-2.amazonaws.com/synalysis was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/synalysis/SynalyzeItProTA_#{version}.zip"
  appcast 'http://www.synalyze-it.com/SynalyzeItPro/appcast.xml',
          checkpoint: 'e74f18b3880f12d6e0a895948fc61949ea3e91fbb285421045f1aeab3c06db87'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'
  license :commercial

  app 'Synalyze It! Pro.app'
end
