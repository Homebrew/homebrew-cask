cask 'smoothscroll' do
  version '1.3.5'
  sha256 '9e4564f8923f0b26a89fb0b4693e9432c2d8a283d794e665e8a13ddbecffaa00'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
