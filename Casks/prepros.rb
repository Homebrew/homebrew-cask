cask 'prepros' do
  version '6.0.15'
  sha256 '4363647a73677849977b7070736dba373e33d5bbb018d3c9883ec69fb4622335'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: 'b518bf8720292d7d8c494440201dade320a6f520ccf2bc0476ffe86f5ce0f666'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
