cask 'smoothscroll' do
  version '1.1.8'
  sha256 '58030937437dac1dd914d9fef6950dc1a44f8762d7604b037650cf7873d5573d'

  url 'https://www.smoothscroll.net/mac/download/SmoothScroll.app.zip'
  appcast 'https://updater.smoothscroll.net/mac/updater.xml'
  name 'SmoothScroll'
  homepage 'https://www.smoothscroll.net/'

  app 'SmoothScroll.app'

  caveats 'gSmoothScroll is not free and comes with a 21-day free trial.'
end
