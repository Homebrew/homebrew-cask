cask 'love' do
  version '0.10.1'
  sha256 '8412f6c451a60118527a42423a99e4583da79b5ff4dd18900755f97527ac1725'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macosx-x64.zip"
  name 'LÖVE'
  homepage 'https://love2d.org'
  license :oss

  app 'love.app'
  binary 'love.app/Contents/MacOS/love'
end
