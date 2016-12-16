cask 'prepros' do
  version '6.0.4'
  sha256 '13780a321975ef2adebb615e6dd0e6a7d96f1a691833d47a269eae6966a7f652'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '6b1d24132f67012a55e3785ce929756fe363613be0019665c7788b3b9dadebe6'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
