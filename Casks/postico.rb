cask 'postico' do
  version '1.0.3'
  sha256 '6e5cb627e9569714ed12aa71fa9062721a561e8bb187c943afcb686c62c99e24'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
