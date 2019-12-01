cask 'smoothscroll' do
  version '1.4.10'
  sha256 'cc2141b8dc85c641fddad162c21b9b1be2323993f9020be36c3eb781c2d0b327'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
