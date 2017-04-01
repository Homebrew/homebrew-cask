cask 'postico' do
  version '1.1.2'
  sha256 '07b6382f74524c462c6c637f2cd81649314a98a7e4e510504528df9eb7a868d6'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
