cask 'smoothscroll' do
  version '1.4.6'
  sha256 '283eda65abd30275d9a86617003f2e46c1c2f7964f986bbc30ce9032e5943d6a'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  depends_on macos: '>= :sierra'

  app 'SmoothScroll.app'
end
