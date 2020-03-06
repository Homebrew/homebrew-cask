cask 'anydo' do
  version '4.2.69'
  sha256 '146c01a2cc30766f56aaf4b07b58f2d840aff6f3c9a61422aeb03d3d0a2c9195'

  url 'https://electron-app.any.do/Any.do.dmg'
  appcast 'https://electron-app.any.do/latest-mac.yml'
  name 'Any.do'
  homepage 'https://www.any.do/'

  depends_on macos: '>= :high_sierra'

  app 'Any.do.app'
end
