cask 'smoothscroll' do
  version '1.2.0'
  sha256 'fa943ba1e4ce8eba09d9968b0c7c8952bce0ca7aad9af1cff4bf8fedac0b2d5f'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
