cask :v1 => 'lyn' do
  version '1.5.2'
  sha256 'a4200b35eb4e51c3932a9e7cd40e1be3291a26921da350d396d337fa667798f6'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          :sha256 => '76e8a68df36fb35893e5ad0c5fd464ec0feb0b6a6f857d6b57792e3c7eb82fb5'
  homepage 'http://www.lynapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Lyn.app'
end
