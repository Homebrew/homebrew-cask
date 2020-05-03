cask 'empoche' do
  version '0.3.0'
  sha256 '2e45b0c9f7185388d8a64e9c94029c12339f43af1febc040e30eecd103c0a5c9'

  # empoche-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://empoche-desktop.s3.amazonaws.com/Empoche-#{version}-mac.zip"
  appcast 'https://empoche-desktop.s3.amazonaws.com/latest-mac.yml'
  name 'Empoche'
  homepage 'https://empoche.com/'

  app 'Empoche.app'

  zap trash: [
               '~/Library/Application Support/empoche',
               '~/Library/Saved Application State/com.empoche.app.savedState',
               '~/Library/Preferences/com.empoche.app.plist',
             ]
end
