cask 'screensleeves' do
  version :latest
  sha256 :no_check

  url 'https://peacockmedia.software/mac/screensleeves/screensleevesSA.dmg'
  name 'ScreenSleeves screensaver'
  homepage 'https://peacockmedia.software/mac/screensleeves/'

  screen_saver 'ScreenSleeves.saver'
end
