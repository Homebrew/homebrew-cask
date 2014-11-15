cask :v1 => 'love' do
  version '0.9.1'
  sha256 '40dfeb1069f6c056b06d0e87c64f3950fd1b1523a9e19af2b03912a5d5c03b13'

  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macosx-x64.zip"
  homepage 'http://love2d.org'
  license :oss

  app 'love.app'
end
