cask 'anydo' do
  version '4.2.90'
  sha256 '36f9ad1b9281ae603f33ab4dded4c23dfea46e3139fdf655cf8cbecb4ad87778'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
