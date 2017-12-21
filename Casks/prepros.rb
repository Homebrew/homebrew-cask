cask 'prepros' do
  version '6.0.18'
  sha256 'c9ffe7884803b26bfa35e28779230a6395f73ec71795820f74d91d2bc38257ce'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '85831615c1cd9a7e4c00ac75d084737c910ed9ee8f0c746db1b74fcd23816c5b'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
