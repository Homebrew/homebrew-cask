cask 'smoothscroll' do
  version '1.1.10'
  sha256 '0c649cb3a9cfe64d89a9359c187b97a1c788bbc5f11fe4ae92163e04958b51d8'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
