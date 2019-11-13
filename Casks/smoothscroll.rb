cask 'smoothscroll' do
  version '1.4.8'
  sha256 'fc1fc2d94284fa13cc82543d3f54bae0e132426abc62d29857fd746b1eddb54e'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
