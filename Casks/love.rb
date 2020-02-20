cask 'love' do
  version '11.3'
  sha256 '0e18d81acdbeab0c93fb20760d1fe3334209bf911572c29d9bde0beb3160161a'

  # bitbucket.org/rude/love was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macos.zip"
  appcast 'https://love2d.org/'
  name 'LÖVE'
  homepage 'https://love2d.org/'

  app 'love.app'
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
