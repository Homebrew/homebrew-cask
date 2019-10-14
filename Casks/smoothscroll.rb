cask 'smoothscroll' do
  version '1.4.0'
  sha256 '5d7330f417ce31e17116c3356d3d1db385f180090794b1a950e32ea9a7c3b8d0'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
