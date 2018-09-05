cask 'smoothscroll' do
  version '1.1.11'
  sha256 '497ac605dcae2833cace00c77d56acb7c699ca94e86fc8ac71d74ddf06e5113b'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
