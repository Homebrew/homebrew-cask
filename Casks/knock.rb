cask 'knock' do
  version '2.1.6'
  sha256 '5c9339d6494e48eb24d5ba2944b856b57b34681016033013aa150276c546b95e'

  # knock-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          checkpoint: '5699ec9737c4e622661adb602ebd41de58f7169b787120433d06ed655f71f688'
  name 'Knock'
  homepage 'http://knocktounlock.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'
end
