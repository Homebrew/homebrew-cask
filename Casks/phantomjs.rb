cask 'phantomjs' do
  version '2.1.1'
  sha256 '538cf488219ab27e309eafc629e2bcee9976990fe90b1ec334f541779150f8c1'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-#{version}-macosx.zip"
  name 'PhantomJS'
  homepage 'http://phantomjs.org/'
  license :bsd

  binary "phantomjs-#{version}-macosx/bin/phantomjs"
end
