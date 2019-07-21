cask 'quickhash' do
  version '3.0.4,1816'
  sha256 'a04252a9803abad388218c27c6387d9783891863d2bd3899ac4804c04cb0914f'

  url "https://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-osx/?wpdmdl=#{version.after_comma}"
  appcast 'https://quickhash-gui.org/downloads/'
  name 'Quickhash'
  homepage 'https://quickhash-gui.org/'

  app 'QuickHash.app'
end
