cask 'mjml' do
  version '2.3.0'
  sha256 'f49000658eb32439f3c131a9a9a62117bf4fed78f11c23645a6fdf94da2e2946'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'c659b0a2326c80d3ca7059532622f79f207344490b929d4820d404285ccb63ea'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
