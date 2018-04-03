cask 'love' do
  version '11.0.0'
  sha256 'dd98733b4e5f1b7deaa2f0a176217620ee928c0aa60be228bfa62152b9c51173'

  # bitbucket.org/rude/love was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macos.zip"
  name 'LÖVE'
  homepage 'https://love2d.org/'

  app 'love.app'
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
