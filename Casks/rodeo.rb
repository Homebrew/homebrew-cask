cask :v1 => 'rodeo' do
  version '1.1.19'
  sha256 '7c91c88715e05cebf6ce2f64551c26d560c1675d786c7f1b5ff6bee03b5fcc79'

  url "http://rodeo-releases.s3.amazonaws.com/#{version}/Rodeo-v#{version}-darwin_64.dmg"
  name 'Rodeo'
  homepage 'http://blog.yhathq.com/posts/rodeo-native.html'
  license :closed

  app 'Rodeo.app'

end
