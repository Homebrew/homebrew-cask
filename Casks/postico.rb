cask 'postico' do
  version '1.4.4'
  sha256 '3f9d650f6d3c8c47764a3a044b66e9691926875f7be6193aceefa1ef4370a1e5'

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
