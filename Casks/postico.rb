cask :v1 => 'postico' do
  version '1.0'
  sha256 '19bfadd12ba23ad5dc427394ef7dfd37b2f8b83d10d6c27c960d27908ec17542'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mavericks'
end
