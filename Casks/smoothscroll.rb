cask 'smoothscroll' do
  version '1.4.4'
  sha256 '8128f488f5cc3de01a3a393ba46f469e633fe811816ebb015044907f955cd569'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
