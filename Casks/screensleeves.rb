cask 'screensleeves' do
  version :latest
  sha256 :no_check

  url 'http://peacockmedia.software/mac/screensleeves/screensleeves.dmg'
  name 'ScreenSleeves screensaver'
  homepage 'http://peacockmedia.software/mac/screensleeves/'

  screen_saver 'ScreenSleeves.saver'
end
