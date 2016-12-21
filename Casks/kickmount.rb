cask 'kickmount' do
  version '1.0.1'
  sha256 '60573a751ab78fcc1e9b3551f3306582074eac916f3d5eab878fbd130de41a95'

  url "https://github.com/m12n/kickmount/releases/download/#{version}/kickmount-#{version}.dmg"
  name 'KickMount'
  homepage 'https://github.com/m12n/kickmount'

  app 'KickMount.app'

  caveats do
    depends_on_java('8')
  end
end
