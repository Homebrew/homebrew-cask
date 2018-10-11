cask 'smoothscroll' do
  version '1.1.12'
  sha256 '6cee0d71484373d1ef927ef01cb7c9a652c5896c88998ae8f9ba890c92126ef2'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'
end
