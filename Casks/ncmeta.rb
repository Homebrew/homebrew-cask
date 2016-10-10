cask 'ncmeta' do
  version '1.0'
  sha256 '42e61202705784dbdb16d0842d8b499fb311c3947b3456fccd046edcfa1b9727'

  url "https://www.timschroeder.net/ncMeta/ncMeta#{version}.zip"
  name 'ncMeta'
  homepage 'https://www.timschroeder.net/ncMeta/'

  app 'ncMeta.app'
end
