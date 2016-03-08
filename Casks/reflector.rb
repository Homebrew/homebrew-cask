cask 'reflector' do
  version '2.4.0'
  sha256 '3f320dc58a1ee31cb9a4696f0dbb9eed88dbc1fbfd123461324e2d1248188594'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          checkpoint: '2242fafaab777ea8ff137f9994b4b73e30a64f1a524c3953ce9f49cecc817b35'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Reflector 2.app'
end
