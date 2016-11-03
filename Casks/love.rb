cask 'love' do
  version '0.10.2'
  sha256 '88c6f96791978e72100122949c71d60fabd072aa86b43be11aa3b6d50c791561'

  # bitbucket.org/rude/love was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macosx-x64.zip"
  name 'LÖVE'
  homepage 'https://love2d.org/'

  app 'love.app'
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
