cask 'smoothscroll' do
  version '1.4.7'
  sha256 '595452881e5fecc3e69d1da8c13699ff7fd95e56a8ac5cb780568e3afddfabdb'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
