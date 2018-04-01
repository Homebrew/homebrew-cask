cask 'ncmeta' do
  version '1.0'
  sha256 '42e61202705784dbdb16d0842d8b499fb311c3947b3456fccd046edcfa1b9727'

  url "https://www.timschroeder.net/files/ncMeta#{version}.zip"
  appcast 'https://www.timschroeder.net/ncMeta/',
          checkpoint: '761cff1ff7c5caadb9b6d2f85516c5205d14398133bbcd2dda06456fb4385502'
  name 'ncMeta'
  homepage 'https://www.timschroeder.net/ncMeta/'

  app 'ncMeta.app'
end
