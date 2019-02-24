cask 'hashbackup' do
  version '2154'
  sha256 '1d48e4cfe95154b4f6cfb32e5455c292afe8a95a8d28fa0be9d9533db4ca9f01'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
