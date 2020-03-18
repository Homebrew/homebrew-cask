cask 'mjml' do
  version '3.0.0'
  sha256 '8f91a614c1aeca4105b929ec82b8b1a117281cc62f4cdd23766fd06258dbb6ff'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
