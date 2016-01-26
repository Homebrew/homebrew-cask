cask 'livereload' do
  version '2.3.74'
  sha256 '7a192cda9c15efdeea00ca53153be0c649e3d413719f8291e4f1684c0132506b'

  url "http://download.livereload.com/LiveReload-#{version}.zip"
  appcast 'https://s3.amazonaws.com/download.livereload.com/LiveReload-Mac-appcast.xml',
          checkpoint: '755f681d6ccf6d2e69dc86ac31f69c131632cc9f4a11554c46277d6824256213'
  name 'LiveReload'
  homepage 'http://livereload.com'
  license :oss

  app 'LiveReload.app'
end
