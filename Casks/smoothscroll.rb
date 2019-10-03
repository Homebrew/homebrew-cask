cask 'smoothscroll' do
  version '1.3.8'
  sha256 'add1d28409c6884adf085fc1b2e319c5772bb3cb82264baca3b7080f48ebe3e6'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
