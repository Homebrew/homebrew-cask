cask 'postico' do
  version '1.5.13'
  sha256 '20080c19cf4dd819501ce68fd2a81b3f2466da02f7fa94946e8abdb6c822f812'

  # eggerapps-downloads.s3.amazonaws.com/ was verified as official when first introduced to the cask
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
