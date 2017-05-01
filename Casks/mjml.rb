cask 'mjml' do
  version '2.0.1'
  sha256 'c26abaa30cd1d270b6016f12780b3590a3a754fa6d9c390a606cb51347e2c071'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: '1a1198801952d8fd93f1f6c2c4ecf5917cf45bfc76261f5958066b6ef00a7aa5'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
