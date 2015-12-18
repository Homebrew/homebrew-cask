cask 'makehuman' do
  version '1.0.2'
  sha256 'ea74381b1fd9c0f699b2cf1a3476d7cf9447fad3beb3c48de0a4017032c44de9'

  # tuxfamily.org is the official download host per the vendor homepage
  url "http://download.tuxfamily.org/makehuman/releases/#{version}/makehuman-#{version}-osx.dmg"
  name 'MakeHuman'
  homepage 'http://www.makehuman.org/'
  license :affero

  app 'MakeHuman.app'
end
