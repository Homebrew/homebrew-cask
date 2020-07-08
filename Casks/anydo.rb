cask 'anydo' do
  version '4.2.95'
  sha256 '68b91ab1829f4fbf4102f1dd36e7f3cae6fa8a2e642db6446e1e25be58c887f3'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
