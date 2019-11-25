cask 'anydo' do
  version '4.2.54'
  sha256 'e4f31950396d496580293e6ea8b4c25e583271636fd2057235fd3048a40f544f'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
