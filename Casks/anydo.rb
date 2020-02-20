cask 'anydo' do
  version '4.2.65'
  sha256 'd60596088e0bce51e15affa9ee52ddcc0ebc09f2081c515e4aad71b754a58376'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
