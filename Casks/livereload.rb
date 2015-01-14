cask :v1 => 'livereload' do
  version '2.3.66'
  sha256 '666b9adfa1cf4c3238e76772e78929f19a6430764e5ff2bd161072dbb5d09df8'

  url "http://download.livereload.com/LiveReload-#{version}.zip"
  appcast 'https://s3.amazonaws.com/download.livereload.com/LiveReload-Mac-appcast.xml',
          :sha256 => 'e68aa7af8891831b795c6c57a7056ad6244fad5bd31d9487d4d4bb58afe385f0'
  homepage 'http://www.livereload.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LiveReload.app'
end
