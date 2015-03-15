cask :v1 => 'postico' do
  version '0.19'
  sha256 'd312e2c64872f8c45b1cd1ed1bff88f944c007f9e634c21aac0bee5f0b185503'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
