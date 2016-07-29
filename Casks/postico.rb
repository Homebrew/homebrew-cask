cask 'postico' do
  version '1.0.8'
  sha256 '44633d2c10932eef09eb6497ef50aace82cf126efef13e079a4a5b1dd9f26181'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
