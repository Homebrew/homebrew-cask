cask 'anydo' do
  version '4.2.79'
  sha256 '66095172f8fcc9f6fafca6d6096eabde96314c5ae023e4cedfd173881429d963'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
