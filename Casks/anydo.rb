cask 'anydo' do
  version '4.2.71'
  sha256 '26cee0d0293045c380165079fba318f7e219670f2fe5ab782a65aa6c1858f734'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
