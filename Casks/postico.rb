cask :v1 => 'postico' do
  version '0.26'
  sha256 'd4b643118bb965b7da6236294fb60a3208822984a07c5eb66298a074757523ad'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
