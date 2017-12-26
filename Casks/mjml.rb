cask 'mjml' do
  version '2.6.0'
  sha256 'c6033e655bd6205ca88364ff4e81913bf8a808498f7e0d78d7b86aa5ab2b28d9'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'd244ffec521ac75518b2c74bc9718b59ac95cac8c7708c878c97c1500fc689f5'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
