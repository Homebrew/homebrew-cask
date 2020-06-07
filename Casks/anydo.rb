cask 'anydo' do
  version '4.2.89'
  sha256 '2fb4d3a02d31a2ab2a51914ffddc6cf755c177fe41fd388f6a1f2c5c1fe37037'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
