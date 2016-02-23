cask 'openclonk' do
  version '7.0'
  sha256 'e81f7ef8dc5a345101a92f81c630f29443049d83b661b18d8a81f15134350ef2'

  url 'http://openclonk.org/builds/release/7.0/openclonk-7.0-x64.app.zip'
  name 'OpenClonk'
  homepage 'http://openclonk.org/'
  license :isc

  app 'openclonk-c54d917-darwin-amd64-clang.app', target: 'OpenClonk.app'
end
