cask 'anydo' do
  version '4.2.88'
  sha256 'ff8cd007c5d994d75d22ee0eb789d6ae350b0cc0b8293ebae768e1b89b3720ee'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
