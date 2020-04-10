cask 'empoche' do
  version '0.2.1'
  sha256 '466622f4cb8a062ea4d43b772fbda51917c767f289555cf21b9108b7ea52ef96'

  url "https://empoche-desktop.s3.eu-central-1.amazonaws.com/Empoche-#{version}.dmg"
  name 'Empoche'
  homepage 'https://empoche.com/'

  app 'Empoche.app'

  zap trash: [
               '~/Library/Application Support/empoche',
               '~/Library/Saved Application State/com.empoche.app.savedState',
               '~/Library/Preferences/com.empoche.app.plist',
             ]
end
