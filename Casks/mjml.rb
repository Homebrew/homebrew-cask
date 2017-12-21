cask 'mjml' do
  version '2.7.0'
  sha256 '639a2ea8c9d1ecbab59ecc0639e8145a62358db28fa52ac469bc146e8ce6ed65'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'd244ffec521ac75518b2c74bc9718b59ac95cac8c7708c878c97c1500fc689f5'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
