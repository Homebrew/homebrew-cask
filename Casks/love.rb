cask 'love' do
  version '0.10.0'
  sha256 '9e81bb4e09b470ffa97678625c9f30bb1436c0632bdff31dc51558ded06a0876'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macosx-x64.zip"
  name 'LÖVE'
  homepage 'https://love2d.org'
  license :oss

  app 'love.app'
  binary 'love.app/Contents/MacOS/love'
end
