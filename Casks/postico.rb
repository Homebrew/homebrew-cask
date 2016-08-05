cask 'postico' do
  version '1.0.9'
  sha256 '19ef3bab73b5764e327e3d62c1c11894915ab9f00019dd6e6bd4427eb18812a1'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
