cask :v1 => 'postico' do
  version '1.0.2'
  sha256 '2bf56ed1ec9a4cbf5308201a42842fab7bec04d369fc27c95eaf5c2caa2d65fc'

  url "https://eggerapps.at/postico/download/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  app 'Postico.app'

  depends_on :macos => '>= :mavericks'
end
