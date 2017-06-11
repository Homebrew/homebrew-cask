cask 'mjml' do
  version '2.4.0'
  sha256 '4fe41eeb778a03e5708fedc7c36b3a14ac403d7589c57f7dfc50a4b3474a8b9e'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: '0531d2a62140c7c6d5fb2e457f979a17673705d97869800bd93549ad1e30a69f'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
