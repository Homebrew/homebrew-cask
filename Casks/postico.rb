cask 'postico' do
  version '1.0.4'
  sha256 '6779f03a7be3203cd2f8d3b5f3623917777998b700e500ded21162e293929dc0'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
