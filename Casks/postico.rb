cask :v1 => 'postico' do
  version '0.27'
  sha256 '59bb1856c101d4dbc746a1c6a5d1118c4a7d0c47e43c22e379f329222501b90d'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
