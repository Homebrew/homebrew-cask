cask 'postico' do
  version '1.0.7'
  sha256 'b12605579fdf74014585d602eb5d377fd1d10d0bf292ead7d210b8669538c41b'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
