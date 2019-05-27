cask 'love' do
  version '11.2'
  sha256 '770286edc8cdab6abb7a522d05bb488ed2433dc5a76f6aca7b2ed54d7c5d4dd8'

  # bitbucket.org/rude/love was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macos.zip"
  appcast 'https://love2d.org/'
  name 'LÖVE'
  homepage 'https://love2d.org/'

  app 'love.app'
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
