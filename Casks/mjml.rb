cask 'mjml' do
  version '1.7.0'
  sha256 '2011466db5b37cc2e06aec3412bf0a1e560fc59636a39e3b224bddb507818e80'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: '4debad94aeeb57ed7f2597d8f31e62990c7b6567fb1472af3f78f8dbf44d0d94'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
