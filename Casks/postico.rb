cask :v1 => 'postico' do
  version '0.23'
  sha256 '0d4527683f13c9565325008329d1cebd717d68a31f8cdaf3d01135399fdb5772'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
