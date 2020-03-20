cask 'mjml' do
  version '3.0.1'
  sha256 '5bafe9f12e3f6fd9c74fa5b73cb2ccb78063cdb07e005d4a8ad73037c8ad7727'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
