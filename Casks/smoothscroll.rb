cask 'smoothscroll' do
  version '1.4.5'
  sha256 '28d1cf3f125f823e1ba898af6565ecb1fa3dab1fac40fc971f0d93e53270cf2d'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
