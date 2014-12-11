cask :v1 => 'padre' do
  version '0.92.0'
  sha256 '481088a40bc71bd62d13ac23ed8fbfa3b8fc651587b9e47461795a9a78032d87'

  url "http://wildperl.com/wp-content/uploads/Padre/padre-osx-uni-#{version.gsub('.','-')}.dmg"
  homepage 'http://padre.perlide.org'
  license :unknown    # todo: improve this machine-generated value

  app 'Padre.app'
end
