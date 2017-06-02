cask 'mkvtools' do
  version '3.6.5'
  sha256 'ea81c12b86ee857e7c7fbed5c04b26e5a5e86194f553cfed27356593d30f720f'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools-home/'

  app "mkvtools#{version}/MKVtools.app"
end
