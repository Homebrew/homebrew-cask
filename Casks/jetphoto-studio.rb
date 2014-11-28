cask :v1 => 'jetphoto-studio' do
  version '5.5'
  sha256 'c583a173d018696d613545acacba4c43f641d770de4e5d5bbb0964c1cb2e9f7f'

  url "http://www.jetphotosoft.com/web/download/JetPhoto_Studio_mac#{version}.zip"
  homepage 'http://www.jetphotosoft.com/web/home/'
  license :unknown

  container :nested => "JetPhoto Studio #{version}.dmg"
  app 'JetPhoto Studio.app'
end
