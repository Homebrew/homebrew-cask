cask 'mjml' do
  version '2.6.0'
  sha256 'c6033e655bd6205ca88364ff4e81913bf8a808498f7e0d78d7b86aa5ab2b28d9'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'e51c5b449d90f4d594c9966426a80256e456d1b078a3a66202b15e6a4bd9d6b1'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
