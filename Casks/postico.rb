cask 'postico' do
  version '1.5.9'
  sha256 '729bc1f449263c23822ec17de5e5d9950592a707cfd6304ce1959d1a35363109'

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
