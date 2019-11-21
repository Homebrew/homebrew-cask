cask 'anydo' do
  version '4.2.53'
  sha256 '1de99ff5845bc62a33879ea5731e80eaceb174177dbc67b2c528e68c6b422142'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
