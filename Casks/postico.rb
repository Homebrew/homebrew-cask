cask 'postico' do
  version '1.5.10'
  sha256 'f0318ddfafa1d52438cc38e160507e8140f595576f829cd4c0b7ff1c4d1f6e1d'

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
