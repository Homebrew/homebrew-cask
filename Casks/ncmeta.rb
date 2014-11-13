cask :v1 => 'ncmeta' do
  version '1.0'
  sha256 '42e61202705784dbdb16d0842d8b499fb311c3947b3456fccd046edcfa1b9727'

  url "http://www.timschroeder.net/ncMeta/ncMeta#{version}.zip"
  homepage 'http://www.timschroeder.net/ncMeta/'
  license :mit

  app 'ncMeta.app'
end
