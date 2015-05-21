cask :v1 => 'phantomjs' do
  version '2.0.0'
  sha256 '9ae74da20e8831c4d48105004993fecee3e7e66f5d3381f879de366d82f9215c'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-#{version}-macosx.zip"
  name 'PhantomJS'
  homepage 'http://phantomjs.org/'
  license :bsd

  binary "phantomjs-#{version}-macosx/bin/phantomjs"
end
