cask :v1 => 'fontstand' do
  version :latest
  sha256 :no_check

  url 'https://fontstand.com/application/download'
  name 'Fontstand'
  homepage 'https://fontstand.com/'
  license :gratis

  app 'Fontstand.app'
end
