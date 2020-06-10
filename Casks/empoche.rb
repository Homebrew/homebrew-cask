cask 'empoche' do
  version '0.4.3'
  sha256 '3bdcbc742be337db49e63bb4c675938e3a921993be733980404c6fc41b016bf5'

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
