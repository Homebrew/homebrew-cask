cask 'smoothscroll' do
  version '1.3.6'
  sha256 '07e7810de40ab7341da293895838420c4bedb1deb049f2247dd7eb07a6433c56'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
