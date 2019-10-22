cask 'smoothscroll' do
  version '1.4.2'
  sha256 'a052c8b413a90fc8616c09908f6f95371892329ca61315a324f2959c06659967'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
