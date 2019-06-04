cask 'swish' do
  version '1.0.0'
  sha256 '3869a417458d4b9085894596be6e9b939a7d6d58ed74fb6e2d810e3c1e999f2b'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  app 'Swish.app'
end
