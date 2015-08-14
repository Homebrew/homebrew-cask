cask :v1 => 'clix' do
  version '2.1'
  sha256 'a4f9d270792e9da698326924e4c899c7a5f13f157c7793b82187688f8c189008'

  url 'ftp://rixstep.com/CLIX.tar.bz2'
  name 'CLIX'
  homepage 'http://rixstep.com/4/0/clix/'
  license :gratis

  app "CLIX#{version}/CLIX.app"
end
