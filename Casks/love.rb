cask :v1 => 'love' do
  version '0.9.1'
  sha256 '82bdd5c40440af8f26f622b8772a877c8aa201fd0115a0f57563790d17a96b68'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macosx-x64.zip"
  name 'LÖVE'
  homepage 'http://love2d.org'
  license :oss

  app 'love.app'
  binary 'love.app/Contents/MacOS/love'
end
