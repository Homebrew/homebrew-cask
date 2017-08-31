cask 'postico' do
  version '1.2.2'
  sha256 '6bae5e169ddf91af762be0ace4e8a9695c0b52ca5285c1cb330e287d29234404'

  # amazonaws.com/eggerapps-downloads was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-#{version}.zip"
  name 'Postico'
  homepage 'https://eggerapps.at/postico/'

  depends_on macos: '>= :mavericks'

  app 'Postico.app'

  zap delete: [
                '~/Library/Application Scripts/at.eggerapps.Postico',
                '~/Library/Containers/at.eggerapps.Postico',
                '~/Library/Preferences/at.eggerapps.Postico.plist',
                '~/Library/Saved Application State/at.eggerapps.Postico.savedState',
              ]
end
