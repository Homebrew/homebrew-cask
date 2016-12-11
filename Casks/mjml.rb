cask 'mjml' do
  version '1.5.0'
  sha256 '69a42d2243db23c114550e1f15b874a35b3d5106dadd404b7db9fbccc56d7264'

  # github.com/mjmlio/mjml-app was verified as official when first introduced to the cask
  url "https://github.com/mjmlio/mjml-app/releases/download/#{version}/mjml-app-osx_#{version}.dmg"
  appcast 'https://github.com/mjmlio/mjml-app/releases.atom',
          checkpoint: 'fa9260c1d0d298346f2465d358cd0c611fa05aba075b57a3b2984aebad3dd5ce'
  name 'MJML'
  homepage 'https://mjmlio.github.io/mjml-app/'

  app 'MJML.app'
end
