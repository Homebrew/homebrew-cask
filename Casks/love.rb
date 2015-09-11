cask :v1 => 'love' do
  version '0.9.2'
  sha256 'a1c76e0bdafbfc596c0001dae9009a683a7e4a0a042c25cb29d95c11e051c4e4'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macosx-x64.zip"
  name 'LÖVE'
  homepage 'http://love2d.org'
  license :oss

  app 'love.app'
  binary 'love.app/Contents/MacOS/love'
end
