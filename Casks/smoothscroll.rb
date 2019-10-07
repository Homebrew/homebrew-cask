cask 'smoothscroll' do
  version '1.3.10'
  sha256 '008b8b297bddaacb2acc326262fe783da2e05b0d7574da8f4ace20701cb439a7'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
