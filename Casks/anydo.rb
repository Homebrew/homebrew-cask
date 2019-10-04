cask 'anydo' do
  version '4.2.46'
  sha256 'cf2874c2d3160d280e021baed8b39b30ac5bbd22a96834c55246a84cc967008d'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  app 'Any.do.app'
end
