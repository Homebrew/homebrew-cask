cask 'smoothscroll' do
  version '1.1.9'
  sha256 '6e231a8375cd25f980a34b60f1eee850ad9a71257c931c775bba05ab129a399e'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
