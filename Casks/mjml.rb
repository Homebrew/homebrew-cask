cask 'mjml' do
  version '2.12.0'
  sha256 'a64ceba133100982260eff2ec091239951e2c943df622108ce8e47c6fac15f25'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/v#{version}/mjml-app-#{version}-mac.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
