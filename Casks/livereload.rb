cask 'livereload' do
  version '2.3.74'
  sha256 '7a192cda9c15efdeea00ca53153be0c649e3d413719f8291e4f1684c0132506b'

  url "http://download.livereload.com/LiveReload-#{version}.zip"
  appcast 'https://s3.amazonaws.com/download.livereload.com/LiveReload-Mac-appcast.xml',
          :sha256 => 'c964172d8b200396e632bee8d38f37d01406457b523656b666549d5254e6a9cc'
  name 'LiveReload'
  homepage 'http://livereload.com'
  license :oss

  app 'LiveReload.app'
end
