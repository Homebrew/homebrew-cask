cask 'love' do
  version '11.3'
  sha256 '65b0cf09e6be1a63251ec212ebf54c748e0115692d8bd1d116297279449a1ae5'

  # bitbucket.org/rude/love was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macos.zip"
  appcast 'https://love2d.org/'
  name 'LÖVE'
  homepage 'https://love2d.org/'

  app 'love.app'
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
