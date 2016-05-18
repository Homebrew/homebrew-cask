cask 'postico' do
  version '1.0.6'
  sha256 '55220eb7ce26232b8fac25f963d870ef3025a8aa57fee71a47a8f5c0141876e0'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
