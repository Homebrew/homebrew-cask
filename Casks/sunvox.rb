cask 'sunvox' do
  version '1.9.5d'
  sha256 '9b60afb1c88e7a81850fb4cd05598377bbfaf5159ef30101ba822f0b091d0a88'

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast 'https://www.warmplace.ru/soft/sunvox/changelog.txt'
  name 'SunVox'
  homepage 'https://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/macos/SunVox.app'
end
