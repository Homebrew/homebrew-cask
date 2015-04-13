cask :v1 => 'postico' do
  version '0.20'
  sha256 '31064dfa92e23c8377d0ddc2f93b871b208231dc48725eb59257177df787a76e'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mountain_lion'
end
