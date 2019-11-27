cask 'anydo' do
  version '4.2.54'
  sha256 'ee2b9260b9add3252965e3c42feddedbf0bba26e1b1432f69e34b11ff12952ab'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
