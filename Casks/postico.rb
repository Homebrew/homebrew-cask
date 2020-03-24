cask 'postico' do
  version '1.5.12'
  sha256 'df3ba8a0c6ade249969a63af433067fa00263a00695a864d607565277a1db47a'

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
