cask 'anydo' do
  version '4.2.57'
  sha256 'bb6215b93bd6baa6a570a97486f9023f513f854f503b09c8c01550c7e34cc8ba'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
