cask 'prepros' do
  version '6.2.3'
  sha256 'deda79eccb33814513569438a222b3682328a3ac074de242b16188034360d6b7'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
