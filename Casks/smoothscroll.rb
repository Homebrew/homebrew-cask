cask 'smoothscroll' do
  version '1.2.3'
  sha256 'c89aacb18c8f83c71ad1050399169ba1eae244772c09d07334a4b7e98a3a4763'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
