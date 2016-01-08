cask 'reflector' do
  version '2.4.0'
  sha256 '3f320dc58a1ee31cb9a4696f0dbb9eed88dbc1fbfd123461324e2d1248188594'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          :sha256 => '12b625089d750b6820093274fc4bf7d943c9fff9fc64e0ba0a152958b4f4a628'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
