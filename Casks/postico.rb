cask 'postico' do
  version '1.1.1'
  sha256 'f8a4723df46ea83e4cee2486da4879d67fcfd51fa3ace54f400880b888b1f428'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  depends_on macos: '>= :mavericks'

  app 'Postico.app'
end
