cask 'mjml' do
  version '2.9.0'
  sha256 '0dfae8495120f5150bdca92f9ce0782f71412d56cdcfffb51fbc48b02c6cc318'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.zip"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
