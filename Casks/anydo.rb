cask 'anydo' do
  version '4.2.87'
  sha256 '60a603bccfc421ecdc9c0e0b344ae73f95ad82a2632799716ab52b29b1ea8667'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
