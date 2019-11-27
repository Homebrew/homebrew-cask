cask 'smoothscroll' do
  version '1.4.9'
  sha256 '399b6ce0bc9ecc2910a0aee63c30f481ae5a1336f87f81aa67dfb79c69d465d1'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
