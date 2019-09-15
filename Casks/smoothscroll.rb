cask 'smoothscroll' do
  version '1.2.1'
  sha256 '94153c482746d830e6fad20effa434e4f6d4f874fa6d973cd63a4e05f6bb6a47'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
