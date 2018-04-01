cask 'mkvtools' do
  version '3.6.6'
  sha256 '6452d226fdf7befa508e5e9237a8eecbc3c7931ae8a6337a7e43867f5a300621'

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name 'MKVtools'
  homepage 'http://www.emmgunn.com/mkvtools-home/'

  app "mkvtools#{version}/MKVtools.app"
end
