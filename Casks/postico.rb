cask 'postico' do
  version '1.4'
  sha256 'bb6352698d60331abfac4ade5231e73cc4734a43f43d4fcbc3ff8cbb31701905'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  depends_on macos: '>= :mavericks'

  app 'Postico.app'

  zap trash: [
               '~/Library/Application Scripts/at.eggerapps.Postico',
               '~/Library/Containers/at.eggerapps.Postico',
               '~/Library/Preferences/at.eggerapps.Postico.plist',
               '~/Library/Saved Application State/at.eggerapps.Postico.savedState',
             ]
end
