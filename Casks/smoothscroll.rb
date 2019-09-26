cask 'smoothscroll' do
  version '1.3.2'
  sha256 '8cf565f020cf9a5abfb48357d4460eda977a571c26a47c5fe484f3b75ae31801'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
