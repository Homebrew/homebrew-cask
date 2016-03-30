cask 'postico' do
  version '1.0.5'
  sha256 '6b8ee69f95f36198b99482f489bd7c00a94f4b1d6efe7d08d09c41a8587e177d'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
