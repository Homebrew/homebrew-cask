cask 'postico' do
  version '1.5.8'
  sha256 '638c4312d32f27aa6d92fd737fb55e23916b2b4326a24dc4ca6f9204ab501f1d'

  # eggerapps-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://eggerapps-downloads.s3.amazonaws.com/postico-#{version}.zip"
  appcast 'https://eggerapps.at/postico/docs/?file=changelist.html'
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  app 'Postico.app'

  zap trash: [
               '~/Library/Application Scripts/at.eggerapps.Postico',
               '~/Library/Containers/at.eggerapps.Postico',
               '~/Library/Preferences/at.eggerapps.Postico.plist',
               '~/Library/Saved Application State/at.eggerapps.Postico.savedState',
             ]
end
