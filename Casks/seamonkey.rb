cask 'seamonkey' do
  version '2.49.2'

  language 'de' do
    sha256 '5d824aa5fe223ba6701243a28b94a65aa2271a685beaf181e4aa5b9626a71900'
    'de'
  end

  language 'en-GB' do
    sha256 'f33dc841580063dcb34b06791aeb92d0530d591ff5ff6d284aa17a979a4dba5c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2647979382e7f92f32095bdc288d0e8395860b63e3df66c3e600ecb2f4f25d73'
    'en-US'
  end

  language 'fr' do
    sha256 '9e582dd487afa8cc6e625ea8a817086793473a89d0a06a21050eb25576879130'
    'fr'
  end

  language 'it' do
    sha256 'f91bf37c0ce1eafba887703dd1bcdad43a0e10fb2cd20bd9468acefe5690787a'
    'it'
  end

  language 'ru' do
    sha256 '75f612a3d88f948a24037e279893800314f2e280cec1edcf6213858aacedbeb4'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/SeaMonkey%20#{version}.dmg"
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
