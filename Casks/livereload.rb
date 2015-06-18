cask :v1 => 'livereload' do
  version '2.3.74'
  sha256 '7a192cda9c15efdeea00ca53153be0c649e3d413719f8291e4f1684c0132506b'

  url "http://download.livereload.com/LiveReload-#{version}.zip"
  appcast 'https://s3.amazonaws.com/download.livereload.com/LiveReload-Mac-appcast.xml',
          :sha256 => 'e68aa7af8891831b795c6c57a7056ad6244fad5bd31d9487d4d4bb58afe385f0'
  name 'LiveReload'
  homepage 'http://livereload.com'
  license :oss

  app 'LiveReload.app'
end
