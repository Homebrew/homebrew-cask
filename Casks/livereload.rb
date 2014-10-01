class Livereload < Cask
  version '2.3.26'
  sha256 '94ede4d8b0c991f3e712659628e9dc01d20991ebaabb3a5579647ea3646c9ad4'

  url "http://download.livereload.com/LiveReload-#{version}.zip"
  appcast 'https://s3.amazonaws.com/download.livereload.com/LiveReload-Mac-appcast.xml'
  homepage 'http://www.livereload.com'
  license :unknown

  app 'LiveReload.app'
end
