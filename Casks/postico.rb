cask 'postico' do
  version '1.2'
  sha256 'f2dbeeb6245bfc144af85929a698a1abed755955dd9a2bb899efe7c1b1eb43fa'

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
